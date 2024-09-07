import 'package:flutter/material.dart';

class TemplateTextResumeGuide extends StatelessWidget {
  const TemplateTextResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Template text',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'The template text is the main part of the template, '
          'it is where you will write the text base text '
          'that the whoevers is using the template see/copy see.\n'
          'In that template text, you can use the variables '
          'you created to make the text dynamic.\n',
        ),
      ],
    );
  }
}
