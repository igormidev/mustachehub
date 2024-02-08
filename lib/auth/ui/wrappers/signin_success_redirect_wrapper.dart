import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/auth/presenter/cubits/sign_up_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class SigninSuccessRedirectWrapper extends StatelessWidget {
  final Widget child;
  const SigninSuccessRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpFormCubit, SignUpFormState>(
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
            WidgetsBinding.instance.addPostFrameCallback(
              (_) {
                context.go('/splash');
              },
            );
          },
        );
      },
      child: child,
    );
  }
}
