import 'package:flutter/material.dart';

class ChoiceVariableResumeGuide extends StatelessWidget {
  const ChoiceVariableResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'Choice variable',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SizedBox(height: 4),
        SelectableText(
          'Choice variables are used to give the template user the option to choose between multiple options. '
          'After the user chooses an option, you can insert the text of the chosen option into the template or '
          'even use the choice as conditional to display other texts based on that choice.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
