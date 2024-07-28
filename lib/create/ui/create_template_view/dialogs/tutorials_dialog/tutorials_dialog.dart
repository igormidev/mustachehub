import 'package:flutter/material.dart';

class TutorialsDialog extends StatefulWidget {
  const TutorialsDialog({super.key});

  @override
  State<TutorialsDialog> createState() => _TutorialsDialogState();
}

class _TutorialsDialogState extends State<TutorialsDialog> {
  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );

    return Dialog(
      child: SizedBox(
        width: 550,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 16),
            SelectableText(
              'How-to-use guide',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SelectableText(
              'Mustache template aren\'t hard to use. With a bref read of this documentation you will already capable of building any text template that you should have in mind.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            const Divider(),
            SelectableText(
              'Text variables',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SelectableText(
              'Text variables are the most basic type of variables. '
              'They are used to insert text into the template.\n\n'
              'For instance; you are creating this template to send it to multiple companies seaking for a oportunity.\n'
              'For that, you wan\t to use the name of the company in some places throght the text. '
              'To achive that, create an variable of the type text called, for example, "Company name".\n'
              'Then, in any place inside the content text, use the variable name surrounded by double curly braces. '
              'In this case, it would be "{{companyName}}".\n\n'
              'Then, when generating an text, you will have a textfield to insert the name of the company.'
              'And the text will be generated with the name of the company replacing the variable "{{companyName}}". An example of usage:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: decoration,
              padding: padding,
              child: Text(
                'Hello, {{companyName}}!\nHow are you doing? We have a great oportunity for you!\n...',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(height: 8),
            const Divider(),
            SelectableText(
              'Conditional variables',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SelectableText(
              'Conditional variables are used to decide if a text '
              'will be inserted into the template based on a condition.\n\n'
              'For instance; you are creating a template to send it to client of a market campaign. '
              'You want to insert a text that says\n"New clients have a 10% discount" only if the client is new.\n\n'
              'To achive that, create a variable of the type conditional called, for example, "Is new client?".\n\n'
              'Now you can use it in any place inside the content text. But diferently from the text variables, '
              'you will use the variable name surrounded by double curly braces and a hash symbol before the variable name. And after the variable name, you will use a slash symbol.\n\n'
              'In this case, it would be "{{#isNewClient}}{{/isNewClient}}".\n'
              'If the condition is true, the text inside the scope will be inserted into the template. '
              'So you can add any type of text you want inside that scope. '
              'For example:',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: decoration,
              padding: padding,
              child: Text(
                '{{#isNewClient}}\nNew clients have a 10% discount\n{{/isNewClient}}',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SelectableText(
              'Also, you can use the conditional variables to insert a text if the condition is false. '
              'To do that, you will use the same variable name, but instead of using a hash symbol before the variable name, you will use a caret symbol. ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: decoration,
              padding: padding,
              child: Text(
                "{{^isNewClient}}\nOld clients have a 5% discount!\n{{/isNewClient}}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            SelectableText(
              'Ok, but how do I set the condition?\n'
              'When generating the text, you will have a checkbox to set the condition. '
              'If the checkbox is checked, the condition will be true, false otherwise',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            const Divider(),
            SelectableText(
              'List of item variable',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            SelectableText(
              'Item variables are used to insert a list of items into the template. '
              'Each item can have multiple variables of any type inside it.\n\n'
              'For instance; You work in a store, an you boss ask\'s you to send him '
              'weekly report in his chat of which expenses we had in the week and if that expense is a recurring expense. '
              'To achive that, create a variable of the type item called, for example, "Expenses".\n\n'
              'Then, you can add variables of any type inside the item. For example, two text variables called "Expense name" and "Expense value", and a conditional variable called "Is recurring expense?".\n\n'
              'Now you can use it inside the content text. But diferently from the text variables, and similar to the conditional variables, you will use the variable name surrounded by double curly braces and a hash symbol before the variable name. And after the variable name, you will use a slash symbol.\n'
              'In this case, it would be "{{#expenses}}{{/expenses}}".\n\n'
              'Now, inside the scope, for each item in the list, the variables of it will be used inside the scope will be inserted into the template. '
              'So you can add any type of text you want inside that scope. ',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: padding,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Theme.of(context).colorScheme.tertiaryContainer,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    height: 40,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.warning_rounded,
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Important",
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 6),
                  SelectableText(
                    "You must add use the item variables inside the scope of the item variable. "
                    "If you try to use the variables of the item outside the scope, the variables "
                    "will not be replaced by the values and you will receive an error indicator.",
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            SelectableText(
              'Continuing the example above, you can use the item variable in the template like this:',
              style: Theme.of(context).textTheme.bodyLarge,
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
                        '{{#expenses}}\n'
                        'The expense {{expenseName}} had a cost of {{expenseValue}}.\n'
                        '{{#isRecurringExpense}}This is a recurring expense{{/isRecurringExpense}}\n'
                        '{{/expenses}}',
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
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSecondary,
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
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }
}
