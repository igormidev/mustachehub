import 'package:flutter/material.dart';

class TextVariablesResumeGuide extends StatelessWidget {
  const TextVariablesResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Text variables',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'Text variables are the most basic type of variables. '
          'They are used to insert text into the template.\n\n',
        ),
      ],
    );
  }
}
