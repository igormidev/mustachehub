import 'package:flutter/material.dart';

class ListOfItemUsecaseGuide extends StatelessWidget {
  const ListOfItemUsecaseGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Use case example',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SelectableText(
          'For instance; you want to give the possibility to the template user '
          'to insert a list of persons. And for each person added, '
          'you want to insert the name, the age and if the person is male or female.\n\n'
          'Without a list of items variable, you could partially achieve this '
          'by, for example, creating text variable called "person one name", "person two name", etc... '
          'And then, "person one age", "person two age", etc...\nAnd in the end, add in the template '
          'text all the variables usage in a copy-paste way for each person variable....\n\n'
          'You can easily see why this is not practical/scalable.\n'
          'Also, with this format you will have a limit of persons you can '
          'add. That limit if the number of variable you created for each atribute.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        SelectableText(
          'And how does list of items variable fix that problem?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'List of templates will allow the template user to create items by demand. How many items he wants.\n'
          'And for each item, he can insert the variables of that item and the template will '
          'display the same logic text for each item.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
