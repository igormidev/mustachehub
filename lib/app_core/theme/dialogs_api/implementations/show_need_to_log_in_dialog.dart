import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/foundation.dart';
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
            if (kReleaseMode) {
              FirebaseAnalytics.instance.logEvent(name: 'auth_dialog_to_login');
            }
            context.go('/auth/login');
          },
        ),
        DialogAction(
          text: 'Create account',
          onPressed: () {
            if (kReleaseMode) {
              FirebaseAnalytics.instance
                  .logEvent(name: 'auth_dialog_to_create_account');
            }
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
