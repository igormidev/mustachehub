import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/account/presenter/cubit/change_password_cubit.dart';
import 'package:mustachehub/account/presenter/state/change_password_state.dart';
import 'package:mustachehub/app_core/mixins/scaffold_messager_default_messages.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/app_core/theme/components/title_and_description_snackbar.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class ChangePasswordRedirectWrapper extends StatelessWidget
    with ScaffoldMessagerDefaultMessages {
  final Widget child;
  const ChangePasswordRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChangePasswordCubit, ChangePasswordState>(
      listener: (context, state) {
        state.mapOrNull(
          withNoUserError: (value) {
            context.go('/splash');
            return;
          },
          withGenericError: (value) => showGenericError(context),
          withCredentialError: (value) {
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
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                TitleAndDescriptionSnackbar(
                  context: context,
                  text: 'Password changed with success!',
                  description: 'Next time you log in, use that new password',
                ),
              );
          },
        );
      },
      child: child,
    );
  }
}
