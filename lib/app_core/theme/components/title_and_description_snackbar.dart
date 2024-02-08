import 'package:flutter/material.dart';

class TitleAndDescriptionSnackbar extends SnackBar {
  TitleAndDescriptionSnackbar({
    super.key,
    required BuildContext context,
    required String text,
    required String description,
  }) : super(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.error,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onErrorContainer,
                    ),
              ),
            ],
          ),
          action: SnackBarAction(
            label: 'Ok',
            textColor: Theme.of(context).colorScheme.onError,
            backgroundColor: Theme.of(context).colorScheme.error.withAlpha(100),
            onPressed: () {
              ScaffoldMessenger.of(context).hideCurrentSnackBar();
            },
          ),
          duration: const Duration(milliseconds: 6000),
        );
}
