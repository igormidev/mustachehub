import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';

mixin ScaffoldMessagerDefaultMessages {
  void showGenericError(BuildContext context) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        ErrorSnackBar(
          context: context,
          text: 'An unknown error has occurred',
          description: 'Try again. You can also try closing the '
              'application. If the error persists, contact support.',
        ),
      );
  }
}
