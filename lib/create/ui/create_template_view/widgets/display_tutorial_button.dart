import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_tutorial_dialog.dart';

class DisplayTutorialButton extends StatelessWidget with OpenTutorialDialog {
  final ETutorialSection selectedSection;
  const DisplayTutorialButton({super.key, required this.selectedSection});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Tooltip(
      message: 'Display tutorial about how to use this variable',
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          alignment: Alignment.centerLeft,
          backgroundColor: colorScheme.tertiaryContainer,
          foregroundColor: colorScheme.tertiary,
          padding: const EdgeInsets.symmetric(horizontal: 8),
        ),
        onPressed: () {
          openTutorialDialog(
            context,
            section: selectedSection,
          );
        },
        child: const Row(
          children: [
            Text('How to use'),
            SizedBox(width: 4),
            Icon(Icons.help),
          ],
        ),
      ),
    );
  }
}
