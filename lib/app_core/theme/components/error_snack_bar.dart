import 'package:flutter/material.dart';

class ErrorSnackBar extends SnackBar {
  ErrorSnackBar({
    super.key,
    required BuildContext context,
    required String text,
    String? description,
    super.duration = const Duration(milliseconds: 6000),
  }) : super(
          backgroundColor: Theme.of(context).colorScheme.errorContainer,
          content: description == null
              ? Text(
                  text,
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                        fontWeight: FontWeight.bold,
                      ),
                )
              : Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      text,
                      style:
                          Theme.of(context).textTheme.headlineSmall?.copyWith(
                                color: Theme.of(context).colorScheme.error,
                                fontWeight: FontWeight.bold,
                              ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      description,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onErrorContainer,
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
        );
}
