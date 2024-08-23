import 'package:flutter/material.dart';

class ConditionalVariableResumeGuide extends StatelessWidget {
  const ConditionalVariableResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Conditional variables',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'The purpose of conditional variables are to decide if a text '
          'will be inserted into the template based on a condition.\n'
          'Whoever is using the template will be able to choose '
          'by a checkbox if the text will be inserted or not.\n\n',
        ),
      ],
    );
  }
}
