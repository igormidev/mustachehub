import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/auth/presenter/cubits/pass_recovery_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class PassRecoverySuccessRedirectWrapper extends StatelessWidget {
  final Widget child;
  const PassRecoverySuccessRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<PassRecoveryFormCubit, PassRecoveryFormState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (value) {
            final error = value.error;
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                ErrorSnackBar(
                  context: context,
                  text: CreadentialAuthExceptionTranslation.getTitle(error),
                  description:
                      CreadentialAuthExceptionTranslation.getDescription(error),
                ),
              );
            return;
          },
          success: (value) {
            context.go('/auth/login');
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  duration: 6.seconds,
                  content: const Text(
                    'Recovery code sent to your e-mail. '
                    'Please check out your inbox (check in spam section as well).',
                  ),
                ),
              );
            return;
          },
        );
      },
      child: child,
    );
  }
}
