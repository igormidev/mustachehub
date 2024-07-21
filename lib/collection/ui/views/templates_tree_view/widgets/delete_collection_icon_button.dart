import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/confirm_dialog.dart';
import 'package:mustachehub/collection/presenter/cubits/delete_collection_cubit.dart';
import 'package:mustachehub/collection/presenter/states/delete_collection_state.dart';

class DeleteCollectionIconButton extends StatelessWidget {
  final Template template;
  const DeleteCollectionIconButton({super.key, required this.template});

  @override
  Widget build(BuildContext context) {
    final templateID = template.id;
    return BlocBuilder<SessionCubit, SessionState>(
        builder: (context, userState) {
      final userEmail = userState.maybeWhen(
        loggedIn: (account, user) => user.email,
        orElse: () => null,
      );

      final permissionLevel = template.metadata.permissionWithId(userEmail);

      final userHasPermissionsToDelete = userEmail != null &&
          permissionLevel == TemplatePermissions.fullAccess;

      if (!userHasPermissionsToDelete) {
        return const SizedBox();
      }

      return BlocBuilder<DeleteCollectionCubit, DeleteCollectionState>(
        builder: (context, state) {
          final isDeleting = state.maybeWhen(
            loadingDeleting: (deletingTargetTemplateUUID) =>
                deletingTargetTemplateUUID == templateID,
            orElse: () => false,
          );

          return IconButton(
            icon: isDeleting
                ? const AspectRatio(
                    aspectRatio: 1,
                    child: CircularProgressIndicator.adaptive(),
                  )
                : const Icon(Icons.delete),
            onPressed: isDeleting
                ? null
                : () async {
                    final confirm = await confirmDialog(context,
                        description:
                            'This will permanently delete the template.');

                    if (confirm == false) return;
                    if (!context.mounted) return;

                    final userColl = context.read<UserCollectionsCubit>().state;
                    final UserCollectionRoot? root = userColl.mapOrNull(
                      withData: (state) => state.userCollections,
                      processing: (state) => state.userCollections,
                    );
                    if (root == null) return;

                    final deleteBloc = context.read<DeleteCollectionCubit>();
                    await deleteBloc.deleteFileWithId(
                      root: root,
                      templateUUID: templateID,
                    );
                  },
          );
        },
      );
    });
  }
}
