import 'package:flutter/material.dart';

ThemeData getTheme(ColorScheme colorScheme) {
  final theme = ThemeData(
    tooltipTheme: const TooltipThemeData(
      triggerMode: TooltipTriggerMode.tap,
    ),
    colorScheme: colorScheme,
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colorScheme.secondaryContainer,
      contentTextStyle: TextStyle(
        color: colorScheme.onSecondaryContainer,
      ),
    ),
    dividerColor: colorScheme.outlineVariant,
    // listTileTheme: Theme.of(context).listTileTheme.copyWith(
    //       tileColor:
    //           Theme.of(context).colorScheme.primaryContainer,
    //       shape: RoundedRectangleBorder(
    //         borderRadius: BorderRadius.circular(8),
    //       ),
    //     ),

    inputDecorationTheme: InputDecorationTheme(
      border: const OutlineInputBorder(
        // borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      filled: true,
      fillColor: colorScheme.secondaryContainer.withAlpha(80),
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    ),
  );

  return theme.copyWith(
    iconTheme: theme.iconTheme.copyWith(
      color: colorScheme.outline,
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        minimumSize: const Size(double.infinity, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        textStyle: theme.textTheme.titleMedium?.copyWith(
          color: colorScheme.onPrimary,
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(),
    ),
  );
}
