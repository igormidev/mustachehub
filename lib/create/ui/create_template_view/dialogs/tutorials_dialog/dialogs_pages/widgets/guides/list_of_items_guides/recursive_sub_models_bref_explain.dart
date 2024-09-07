import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/drag_to_left_widget.dart';

class RecursiveSubModelsBrefExplain extends StatelessWidget {
  const RecursiveSubModelsBrefExplain({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 12),
        SelectableText(
          'Recursive sub-items usage',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'In an item, you can create any variable type, including other items.\n'
          'This is called a recursive sub-item.\n'
          'This is useful when you have a list of items, and each item has a list of items.\n'
          'For example, a company has a list of employees, and each employee has '
          'a list of variables such as name, age etc...\nAnd for each employee, of '
          'each company, you want to display the same template text.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Bellow is another example of a recursive sub-item:',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const DragToLeftWidget(
          text: ''
              '{{#persons}}\n'
              'Hi, my name is {{personName}}'
              'I have some children, they are:\n'
              '{{#children}}{{childName}}, {{/children}}\n'
              '{{/persons}}',
        ),
        SelectableText(
          'In this example, we have a list of persons, and each person has a list of children.\n'
          'For each person, we want to display the name of the person and the name of all children of that person.\n'
          'So, sub models work exactly like the main model, but inside an other model. Can have any type of variable, '
          'including other sub models (howmany levels you want).',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
