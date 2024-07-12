import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/generate/presenter/states/selected_template_state.dart';

class EditIconOnlyWithPermissionFacade extends StatelessWidget {
  const EditIconOnlyWithPermissionFacade({super.key});

  @override
  Widget build(BuildContext context) {
    final userEmail = context.read<SessionCubit>().state.userProfile()?.email;

    return BlocBuilder<SelectedTemplateCubit, SelectedTemplateState>(
      builder: (context, state) {
        final Template? template = state.whenOrNull(
          withData: (Template template) {
            return template;
          },
        );

        final TemplatePermissions? permission =
            template?.metadata.permissionWithId(userEmail);
            
        if (template == null ||
            ![TemplatePermissions.allowWrite, TemplatePermissions.fullAccess]
                .contains(permission)) {
          return SizedBox.fromSize();
        }

        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {
              context.go('/createMustache', extra: template);
            },
            icon: const Icon(Icons.edit),
          ),
        );
      },
    );
  }
}
