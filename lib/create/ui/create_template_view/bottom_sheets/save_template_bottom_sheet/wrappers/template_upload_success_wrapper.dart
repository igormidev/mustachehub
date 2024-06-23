import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/create/presenter/cubits/template_upload_cubit.dart';
import 'package:mustachehub/create/presenter/state/template_upload_state.dart';

class TemplateUploadSuccessWrapper extends StatelessWidget
// with TabSelectionMixin
{
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
          success: () async {
            context.go('/generateText');
            return;
          },
          withError: () {
            ScaffoldMessenger.of(context).showSnackBar(
              ErrorSnackBar(
                context: context,
                text: 'Error while trying to send spreadsheet to api',
                description: 'Try again later. Try to see if the pipe '
                    'models have something that might cause the error. '
                    'If the error continues, please contact support.',
              ),
            );
          },
        );
      },
      child: child,
    );
  }
}
