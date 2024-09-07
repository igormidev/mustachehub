import 'package:flutter/material.dart';

class CreateChoiceVariableGuide extends StatelessWidget {
  const CreateChoiceVariableGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 6),
        SelectableText(
          'Creating a choice variable',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'To create a choice variable, localize an big  \'add '
          'button\' inside the choice variable section that is '
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
          'Now comes the fun part. We now can add all the options that the user will be able to choose from.\n'
          'Initialy you will see two text\'s inputs with the name "Option 1" and "Option 2". '
          'Click in those ones and fullfield them with the name of the options you want to give to the user.\n'
          'You only see two options initialy because that the minimum amount of options that you need to have. '
          'But you can add as many options as you want by clicking in the add icon button right bellow the next option.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Creating example',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'You want the user of your template to select his favorite hero.\n'
          'On variables tab, in the choice variable section, click in the add button '
          'and inside the variable form you give the name to the variable as "Favorite hero"\n'
          'Then, you give a description like "Select your favorite hero from the list".\n'
          'And finally, you add the options "Batman", "Superman", "Wonder Woman" and "Flash".\n'
          'And done! Thats it. You just created a choice variable that will let the user choose his favorite hero.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'After adding all the options you want, click in the button called "Save" to save that choice variable.\n'
          'You can now use that variable in the template. ',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
