import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AddNewButton extends StatelessWidget {
  final String tooltip;
  final void Function() onTap;
  final Color? color;
  final double height;
  final double iconSize;
  const AddNewButton({
    super.key,
    required this.onTap,
    required this.tooltip,
    this.color,
    this.height = 60,
    this.iconSize = 30,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: height,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          onTap: onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(20),
            dashPattern: const [6, 6],
            color: color ?? Theme.of(context).colorScheme.outlineVariant,
            strokeWidth: 2,
            child: Tooltip(
              message: tooltip,
              child: Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Center(
                  child: Icon(Icons.add, size: iconSize),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
