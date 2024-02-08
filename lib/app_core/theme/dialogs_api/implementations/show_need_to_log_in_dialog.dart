import 'package:flutter/material.dart' show BuildContext;
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/overlay_controller.dart';

void showNeedToLogInDialog(BuildContext context) {
  InScreenOverlay.instance().show(
    context: context,
    overlayType: DialogTypeMessageAction(
      title: 'Need to log in!',
      description: 'Please log into your account or create one for free!',
      actions: [
        DialogAction(
          text: 'Log in',
          onPressed: () {
            context.go('/auth/login');
          },
        ),
        DialogAction(
          text: 'Create account',
          onPressed: () {
            context.push('/auth/signin');
          },
        ),
        const DialogAction(
          text: 'Close',
        ),
      ],
    ),
  );
}
