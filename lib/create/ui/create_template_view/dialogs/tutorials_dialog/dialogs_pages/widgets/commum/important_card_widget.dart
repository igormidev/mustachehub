import 'package:flutter/material.dart';

class ImportantCardWidget extends StatelessWidget {
  final String text;
  final EdgeInsets padding;
  const ImportantCardWidget({
    super.key,
    required this.text,
    this.padding = const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Theme.of(context).colorScheme.tertiaryContainer,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.tertiary,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            height: 40,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Theme.of(context).colorScheme.onTertiary,
                ),
                const SizedBox(width: 10),
                Text(
                  "Important",
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 6),
          SelectableText(
            text,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
