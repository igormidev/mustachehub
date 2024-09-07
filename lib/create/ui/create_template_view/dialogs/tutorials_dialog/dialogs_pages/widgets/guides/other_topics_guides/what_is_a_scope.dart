import 'package:flutter/material.dart';

class WhatIsAScope extends StatelessWidget {
  const WhatIsAScope({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'What is a variable scope?',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'Scope are used to delimit an area in the text where a variable will have effect.\n'
          'The scope have an opening and a closing tag, and the variable will only have "effect" '
          'inside this area.\n\n'
          'The "effect" will vary depending on the variable type, for instance:\n'
          'For a conditional variable, the scope is used to define the text that will be '
          'displayed when using the template and selecting that variable condition to true.\n'
          'For a item variable, the scope defines the loop scope that will repeat the same logic '
          'inside the scope for each item in the list.\n',
        ),
        SelectableText(
          'Scope anatomy',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'The scope is defined by the opening and closing tags.\n'
          'A tag is defined by the name of the variable, in camel case '
          'format, surrounded with double curly braces.\n\n'
          'You will do that scope declaration two times, one for the opening tag and '
          'one for the closing tag.\n'
          'In the closing tag, the last one, you will add a "/" as a prefix, '
          'before the variable name. That will indicate that tag is the end of the scope\n\n'
          'And in the open tag, the first one, you can either add a "#" or a "^" as a prefix, '
          'before the variable name. That will indicate the type of scope you are creating.\n',
        ),
        SelectableText(
          'Open scope types',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'There are two types of scope, the positive and the negative.\n'
          'The "#" symbol is used to indicate a positive action, '
          'that is, the text inside the scope will be displayed if the variable condition is true.\n\n'
          'The "^" symbol is used to indicate a negative action, '
          'that is, the text inside the scope will be displayed if the variable condition is false.\n'
          'In the list of items, the negative action scope is used to define the text that will be '
          'displayed if the list of items is empty.\n',
        ),
      ],
    );
  }
}
