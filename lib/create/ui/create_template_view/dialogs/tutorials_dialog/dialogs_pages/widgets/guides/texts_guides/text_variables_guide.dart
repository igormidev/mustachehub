import 'package:flutter/material.dart';

class TextVariablesGuide extends StatelessWidget {
  const TextVariablesGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
