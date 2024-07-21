import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/collection/presenter/cubits/delete_collection_cubit.dart';
import 'package:mustachehub/collection/presenter/states/delete_collection_state.dart';

class UpdateCollectionAfterDeletingTemplateWrapper extends StatelessWidget {
  final Widget child;
  const UpdateCollectionAfterDeletingTemplateWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    final deleteControllerCubit = context.read<DeleteCollectionCubit>();
    return BlocListener<DeleteCollectionCubit, DeleteCollectionState>(
      listener: (context, state) {
        state.whenOrNull(deletedWithSucess: (
          UserCollectionRoot newCollectionAfterDeletingTargetTemplate,
        ) {
          FirebaseAnalytics.instance.logEvent(name: 'template_deleted');
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Template deleted with success!'),
            ),
          );
          context.read<UserCollectionsCubit>().setNewCollection(
                newCollectionAfterDeletingTargetTemplate,
              );
          deleteControllerCubit.returnToNormalState();
        }, error: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            ErrorSnackBar(
              context: context,
              text: 'Error while deleting template',
              description: message,
            ),
          );
          deleteControllerCubit.returnToNormalState();
        });
      },
      child: child,
    );
  }
}
