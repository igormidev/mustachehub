import 'package:flutter/material.dart';

class ListOfItemsResumeGuide extends StatelessWidget {
  const ListOfItemsResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'List of items variable',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'This is the most "complex" variable that you can create.\n'
          'This variable type is used when you have a list of "items" '
          'that you want to use in the template, and you want to do the same '
          'display logic for each item.\nAlso, the number of "items" '
          'can vary for each time you use the template.\n\n'
          'Please understand the used nomenclature "item" as anything, a company, a person, a product, etc.\n\n'
          'Each item will be composed of a set of variables that you define.\nSuch as a text variable, '
          'conditional, choice or even other sub-items inside the major item.',
        ),
      ],
    );
  }
}
