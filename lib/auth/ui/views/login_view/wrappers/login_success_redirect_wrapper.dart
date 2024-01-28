import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class LoginSuccessRedirectWrapper extends StatelessWidget {
  final Widget child;
  const LoginSuccessRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginFormCubit, LoginFormState>(
      listener: (context, state) {
        state.mapOrNull(
          error: (value) {
            final error = value.error;
            ScaffoldMessenger.of(context).showSnackBar(
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
            context.go('/splash');
          },
        );
      },
      child: child,
    );
  }
}
