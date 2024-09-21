import 'package:flutter/material.dart';

class CreateListOfItemsGuide extends StatelessWidget {
  const CreateListOfItemsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Creating a list of items variable',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'To create a list of items variable, localize an big  \'add '
          'button\' inside the list of items variable section that is '
          'localized inside the variables declaration tab (the first tab).',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 8),
        SelectableText(
          'Then, after clicking on the button, a creation form will apear. '
          'Give a name that will represent that variable and '
          'add a good description that let\'s whoevers is using the '
          'template know what that variable is about.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'As an example, you will create a variable called "persons" '
          'that will represent a list of persons.\n'
          'An item is composed by a multiple variables. So lets create them.'
          'In this example you can create two text variables for that person item called '
          '"personName" and "personAge". The process of creating that item text variables is the same as '
          'creating a regular text variable. The same applies to all the other variable types.\n'
          'Now, lets add a choice variable named "personGender" with options "Male" and "Female".\n'
          'And now, whoever uses the template, can simply click an "Add person" button, '
          'and fullfield the person variables.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'That all! Your person item variable is now created.',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SelectableText(
          'Now lets use it in the template text.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
