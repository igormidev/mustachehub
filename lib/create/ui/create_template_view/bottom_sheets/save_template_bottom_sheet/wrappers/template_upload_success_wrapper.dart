// ignore_for_file: use_build_context_synchronously

import 'package:commom_states/cubits/user_collections_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/create/presenter/cubits/cleaning_dependencies_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/states/template_upload_state.dart';

class TemplateUploadSuccessWrapper extends StatelessWidget {
  final Widget child;
  const TemplateUploadSuccessWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<TemplateUploadCubit, TemplateUploadState>(
      listener: (context, state) {
        state.whenOrNull(
          success: (UserCollectionRoot newUserCollection) async {
            context
                .read<UserCollectionsCubit>()
                .setNewCollection(newUserCollection);
            context.read<CleaningDependenciesCubit>().setCleaningDependencies();
          },
          withError: (String message) {
            ScaffoldMessenger.of(context).showSnackBar(
              ErrorSnackBar(
                context: context,
                text: 'Error while saving template in the server.',
                description: message,
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
