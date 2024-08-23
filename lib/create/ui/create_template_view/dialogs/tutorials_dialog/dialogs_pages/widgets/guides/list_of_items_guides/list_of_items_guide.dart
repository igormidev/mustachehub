import 'package:flutter/material.dart';

class ListOfItemsGuide extends StatelessWidget {
  const ListOfItemsGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'List of items',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'List of items are used to insert a list of items into the template.\n',
        ),
      ],
    );
  }
}
