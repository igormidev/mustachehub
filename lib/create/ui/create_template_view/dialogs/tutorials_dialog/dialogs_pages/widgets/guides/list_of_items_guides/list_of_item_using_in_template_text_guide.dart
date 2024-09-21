import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/drag_to_left_widget.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/important_card_widget.dart';

class ListOfItemUsingInTemplateTextGuide extends StatelessWidget {
  const ListOfItemUsingInTemplateTextGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 12),
        SelectableText(
          'Using list of items variables in the template text',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'In the template text, you can use the variable in '
          'any place inside. To-do so, we must create a scope.\n'
          'The reason for this is because the scope '
          'is delimiting where you will build the logic that '
          'will be repeated for each item added by the template user.\n\n'
          'To create the scope, first surround the variable name, in camel '
          'case format, with double curly braces. '
          'Also, add before the variable name, as a preffix, the "#" symbol and, '
          'after the variable name, as a suffix, the name, in camel case format, '
          'of the option you want to use as requirement to display the text.\n'
          'Then, write exactly the same thing but replacing the "#" symbol with '
          'a "/".\nThat will indicate the end of the scope.\n',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Now, inside the scope, that is, between the double '
          'close curly braces and the double open curly braces, '
          'you can use all the variables you created of the item.\n'
          'The usage of the variables does not change. '
          'It is the same, that is: declare them the same you normally do.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        const ImportantCardWidget(
          text:
              'The item variables can only be used inside the scope of the list of items variable. '
              'Thats because the scope is the place where the logic of the item will be repeated for each item added.'
              'So it does not make sense to use the item variables outside the scope, as they will not be repeated.',
        ),
        SelectableText(
          'Dont worry, when using the choice as text, the auto-complete will help you to insert the correct syntax. '
          'Just type in "{" to trigger the auto-complete dialog and select the variable name with the # prefix.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const ImportantCardWidget(
          text: 'The auto complete dialog will only display '
              'the variables that you can use wherever you cursor is.\n\n'
              'So, if your cursor is inside a item scope, the '
              'auto-complete will display all the item variables of the scope he is inside.\n',
        ),
        SelectableText(
          'Lets see a pratical example:',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'Continuing with the above example of the list of persons, '
          'our goal is to display the name, age and a text depending '
          'if the person is male of female.\n\n'
          'To achive so, we will create the scope, for example, {{#persons}}{{/persons}}.\n\n'
          'Inside the scope, we will use the variables we created for the person item. '
          'Lets start by using the person name;\n'
          'A declaration of a variable inside a scope is like this:\n{{#persons}}{{personName}}{{/persons}}'
          'The same logic is applied to the other variables.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 12),
        SelectableText(
          'The result should look something like this:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const DragToLeftWidget(
          text: ''
              '{{#persons}}\n'
              'Hi, my name is {{personName}}'
              ' and I am {{personAge}} years old.\n'
              '{{#isMale}}I am a male!{{/isMale}}\n'
              '{{/persons}}',
        ),
        SelectableText(
          'So, how will this be used?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'Whoever uses the template will be able to add as many persons as they want and, '
          'for each person, the template output text will be displayed with the person name, '
          'age and an extra text if the person selects that he is male.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
