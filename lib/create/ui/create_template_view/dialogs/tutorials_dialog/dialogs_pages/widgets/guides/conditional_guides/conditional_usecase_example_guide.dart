import 'package:flutter/material.dart';

class ConditionalUsecaseExampleGuide extends StatelessWidget {
  const ConditionalUsecaseExampleGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        SelectableText(
          'Use case example',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'For instance; you are creating a template  with the intention of sending it to client of a market campaign. '
          'Some client\'s will have a text that alerts the user about his discount, '
          'but only if the client is new.\nYou want a check box that will allow the user to choose if the text will be inserted or not.\n'
          'So, your goal is to insert a text that says\n"New clients have a 10% discount" only if the client is new with a checkbox option.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
