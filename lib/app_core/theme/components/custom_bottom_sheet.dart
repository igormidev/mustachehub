import 'package:flutter/material.dart';

Future<void> showCustomBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  double? horizontalPadding,
  double? verticalPadding,
}) {
  return showModalBottomSheet<T>(
    context: context,
    useSafeArea: false,
    isScrollControlled: true,
    constraints: const BoxConstraints(
      maxWidth: double.maxFinite,
    ),
    builder: (context) {
      return FractionallySizedBox(
        heightFactor: 0.8,
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(26),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding ?? 0,
              vertical: verticalPadding ?? 0,
            ),
            child: child,
          ),
        ),
      );
    },
  );
}
