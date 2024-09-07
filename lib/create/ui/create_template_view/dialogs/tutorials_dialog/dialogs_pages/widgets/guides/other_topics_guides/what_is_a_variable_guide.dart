import 'package:flutter/material.dart';

class WhatIsAVariableGuide extends StatelessWidget {
  const WhatIsAVariableGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'What is a variable?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'A variable is a component that will make some parts of '
          'the template dynamic. By variables you can insert, change '
          'and manipulate the template text the way you want.\n'
          'Each variable type has its own purpose, use case and will '
          'manipulate the output text in a different way.\n'
          'Read the guides to understand how to use each variable '
          'so you can create whatever type of template you want.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
