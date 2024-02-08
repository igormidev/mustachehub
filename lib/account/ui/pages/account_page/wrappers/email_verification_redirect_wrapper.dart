import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/account/presenter/cubit/email_verification_cubit.dart';
import 'package:mustachehub/account/presenter/state/email_verification_state.dart';
import 'package:mustachehub/app_core/mixins/scaffold_messager_default_messages.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/app_core/theme/components/title_and_description_snackbar.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class EmailVerificationRedirectWrapper extends StatelessWidget
    with ScaffoldMessagerDefaultMessages {
  final Widget child;
  const EmailVerificationRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<EmailVerificationCubit, EmailVerificationState>(
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
          alreadyValidatedEmail: (value) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                TitleAndDescriptionSnackbar(
                  context: context,
                  text: 'Email already validated!',
                  description: 'Restart the aplication.',
                ),
              );
            return;
          },
          successSendingEmailVerification: (value) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                TitleAndDescriptionSnackbar(
                  context: context,
                  text: 'Email sent successfully!',
                  description: 'Check your email for further instructions',
                ),
              );
          },
        );
      },
      child: child,
    );
  }
}
