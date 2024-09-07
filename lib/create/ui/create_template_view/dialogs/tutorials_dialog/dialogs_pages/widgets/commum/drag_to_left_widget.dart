import 'package:flutter/material.dart';

class DragToLeftWidget extends StatelessWidget {
  final String text;
  const DragToLeftWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.tertiaryContainer,
    );
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: decoration,
      padding: padding,
      child: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Text(
                text,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
          IgnorePointer(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Theme.of(context).colorScheme.tertiary,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                height: 30,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Drag to left",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    ),
                    const SizedBox(width: 10),
                    Icon(
                      Icons.keyboard_double_arrow_right_rounded,
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
