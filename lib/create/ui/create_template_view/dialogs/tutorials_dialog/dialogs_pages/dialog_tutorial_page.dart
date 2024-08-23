import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DialogTutorialPage extends StatelessWidget {
  final int initialScrollIndex;
  final ItemScrollController scrollController;
  final ScrollOffsetListener scrollOffsetListener;
  final ItemPositionsListener itemPositionsListener;
  const DialogTutorialPage({
    super.key,
    required this.initialScrollIndex,
    required this.scrollController,
    required this.scrollOffsetListener,
    required this.itemPositionsListener,
  });

  @override
  Widget build(BuildContext context) {
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );

    final List<Widget> children = [
      const SizedBox(height: 16),
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
        'Then, in any place inside the template text, use the variable name surrounded by double curly braces. '
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
        'Now you can use it i n any place inside the template text. But diferently from the text variables, '
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
        'Ok, but how do I set the condition?',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      SelectableText(
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
        'Now you can use it inside the template text. But diferently from the text variables, and similar to the conditional variables, you will use the variable name surrounded by double curly braces and a hash/slash symbol after/before the variable name.'
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
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
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
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
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
      const SizedBox(height: 8),
      const Divider(),
      SelectableText(
        'Choice variable',
        style: Theme.of(context).textTheme.displaySmall,
      ),
      const SizedBox(height: 4),
      SelectableText(
        'Choice variables are used to give the template user the option to choose between multiple options. '
        'After the user choose an option, you can insert the text of the chosen option into the template or '
        'even use the choice as conditional to display other texts based on the choice',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      SelectableText(
        'Using selected choice name',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      SelectableText(
        'To use the name of the variable you should use the name of the variable with the suffix '
        '".text" to indicate you want the name of the variable, all of that surrounded by double curly braces.\n'
        'Dont worry, when using the choice as conditional, the auto-complete will help you to insert the correct syntax.\n\n'
        'For example: Create a choice variable called "Favorite color" with the options "Red", "Green" and "Blue". '
        'Then, to display the choosed color, use the following template text:',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        decoration: decoration,
        padding: padding,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 2, bottom: 2),
            child: Text(
              'My favorite color is {{favoriteColor.text}}',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
        ),
      ),
      SelectableText(
        'In the above example, when using the template, if the user choose the '
        'color "Red", the text output will be "My favorite color is Red".',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      SelectableText(
        'Using choice as conditional',
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      SelectableText(
        'You can use the choice variable as a conditional variable. Similar to the conditional variables, '
        'that will display the text inside the scope based if the choice is the same as the option.\n\n'
        'To-do so, similar to list variables, you will create a scope area with double curly braces and a hash/ symbol before the variable name. '
        // you will type in a hash, the variable name, plus dot, plus the name of the option, all of that surrounded by double curly braces and a hash symbol before the variable name.\n'

        'Dont worry, when using the choice as conditional, the auto-complete will help you to insert the correct syntax.\n\n'
        'For example, you have a choice variable called "Client priority" with the options "High", "Medium" and "Low".\n'
        'And you want to display a message based on the priority of the client. '
        'You can use the following template text to display a message based on the priority of the client:',
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
                  '{{#clientPriority.high}}\n'
                  'The client has a high priority.\n'
                  '{{/clientPriority.high}}\n',
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
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                              color: Theme.of(context).colorScheme.onSecondary,
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
      Align(
        alignment: Alignment.centerRight,
        child: ElevatedButton.icon(
          onPressed: () {
            Navigator.of(context).pop();
          },
          label: const Text('Close '),
          icon: const Icon(Icons.close),
        ),
      ),
      const SizedBox(height: 36),
    ];

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: 550,
        child: ScrollablePositionedList.builder(
          itemScrollController: scrollController,
          initialScrollIndex: initialScrollIndex,
          scrollOffsetListener: scrollOffsetListener,
          itemPositionsListener: itemPositionsListener,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: children.length,
          itemBuilder: (context, index) {
            return children[index];
          },
        ),
      ),
    );
  }
}
