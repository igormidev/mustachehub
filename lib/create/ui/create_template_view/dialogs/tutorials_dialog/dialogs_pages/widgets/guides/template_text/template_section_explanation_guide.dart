import 'package:flutter/material.dart';

class TemplateSectionExplanationGuide extends StatelessWidget {
  const TemplateSectionExplanationGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Divide your template into sections',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'You can divide your text into sections to make it easier to understand and manage.\n'
          'This is useful when you have a large template text, or when you want to separate the text into different parts.\n\n'
          'Also, when using the created template, you will be able to copy only the text from the selected section if you want.\n\n'
          'To add a new section, just click on the "+" button that appears when you hover over the template text.\n\n',
        ),
      ],
    );
  }
}
