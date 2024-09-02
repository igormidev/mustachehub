import 'package:flutter/material.dart';

class TemplateBreakLineGuide extends StatelessWidget {
  const TemplateBreakLineGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'Breakline or not between sections',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'As said above, the intent of separating the template text '
          'into sections is to make it easier to understand and manage.\n'
          'In stat sense, you may want to separe parts of the text but without '
          'breaklines between them when using the template and clicking to copy the hole output of the template.\n'
          'For that, you can have controll if you want to have a breakline or not between the sections.\n\n'
          'To do that, look for a switch button in the right side of the section title, '
          'if the switch is on, the breakline will be added between that specific section '
          'and the previous one when you click to copy the hole output when using the template.',
        ),
      ],
    );
  }
}
