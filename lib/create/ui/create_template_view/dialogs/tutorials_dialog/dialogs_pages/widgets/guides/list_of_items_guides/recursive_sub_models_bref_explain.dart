import 'package:flutter/material.dart';

class RecursiveSubModelsBrefExplain extends StatelessWidget {
  const RecursiveSubModelsBrefExplain({super.key});

  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Recursive sub-items usage',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'In an item, you can create any variable type, including other items.\n'
          'This is called a recursive sub-item.\n'
          'This is useful when you have a list of items, and each item has a list of items.\n'
          'For example, a company has a list of employees, and each employee has '
          'a list of variables such as name, age etc...\nAnd for each employee, of '
          'each company, you want to display the same template text.\n\n',
        ),
        SelectableText(
          'Bellow is another example of a recursive sub-item:\n\n',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10),
          decoration: decoration,
          padding: padding,
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    ''
                    '{{#persons}}\n'
                    'Hi, my name is {{personName}}'
                    'I have some children, they are:\n'
                    '{{#children}}{{childName}}, {{/children}}\n'
                    '{{/persons}}',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ),
              ),
              IgnorePointer(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    height: 30,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Drag to left",
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall
                              ?.copyWith(
                                color:
                                    Theme.of(context).colorScheme.onSecondary,
                              ),
                        ),
                        const SizedBox(width: 10),
                        Icon(
                          Icons.keyboard_double_arrow_right_rounded,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SelectableText(
          'In this example, we have a list of persons, and each person has a list of children.\n'
          'For each person, we want to display the name of the person and the name of all children of that person.\n\n'
          'So, sub models work exactly like the main model, but inside an other model. Can have any type of variable, '
          'including other sub models ( howmany levels you want ).',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
