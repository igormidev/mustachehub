import 'package:flutter/material.dart';

class CreateConditionalVariableGuide extends StatelessWidget {
  const CreateConditionalVariableGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Creating a conditional variable',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'To create a conditional variable, localize an big  \'add '
          'button\' inside the conditional variable section that is '
          'localized inside the variables declaration tab (the first tab).\n',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Then, after clicking on the button, a creation form will apear. '
          'Give a name that will represent that variable and '
          'add a good description that let\'s whoevers is using the '
          'template know what that variable is about.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'After adding good name and description, click in the '
          'button called "Save" to save that conditional variable.\n'
          'You can now use that variable in the template. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
