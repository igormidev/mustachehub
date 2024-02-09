import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AddNewButton extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const AddNewButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 60,
        child: InkWell(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          onTap: onTap,
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(20),
            dashPattern: const [6, 6],
            color: Theme.of(context).colorScheme.outlineVariant,
            strokeWidth: 2,
            child: Tooltip(
              message: text,
              child: Container(
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(Icons.add, size: 30),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}