import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/account/presenter/cubit/log_out_cubit.dart';
import 'package:mustachehub/account/presenter/state/log_out_state.dart';
import 'package:mustachehub/app_core/mixins/scaffold_messager_default_messages.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/auth/ui/translation/creadential_auth_exception_translation.dart';

class LogOutRedirectWrapper extends StatelessWidget
    with ScaffoldMessagerDefaultMessages {
  final Widget child;
  const LogOutRedirectWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<LogOutCubit, LogOutState>(
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
          successLogOut: (value) {
            context.go('/splash');
            return;
          },
        );
      },
      child: child,
    );
  }
}
