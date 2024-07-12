import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/date_time_formatter.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/confirm_dialog.dart';
import 'package:mustachehub/collection/presenter/cubits/delete_collection_cubit.dart';
import 'package:mustachehub/collection/presenter/states/delete_collection_state.dart';

class FileNodeFacadeFace extends StatelessWidget {
  final UserCollectionFile file;
  const FileNodeFacadeFace({
    super.key,
    required this.file,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(file.template.info.name),
      isThreeLine: true,
      onTap: () {
        context.go('/generateText?templateId=${file.template.id}');
      },
      subtitle: Text(
        'Updated at: ${file.template.metadata.updatedAt.namedDisplayDateWithHour}. ${file.template.info.description}',
      ),
      trailing: BlocBuilder<DeleteCollectionCubit, DeleteCollectionState>(
        builder: (context, state) {
          final isDeleting = state.maybeWhen(
            loadingDeleting: (deletingTargetTemplateUUID) =>
                deletingTargetTemplateUUID == file.template.id,
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
                    final confirm = await confirmDialog(context);

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
                      templateUUID: file.template.id,
                    );
                  },
          );
        },
      ),
    );
  }
}
