import 'package:flutter/material.dart';

class ConditionalUsingInTemplateGuide extends StatelessWidget {
  const ConditionalUsingInTemplateGuide({super.key});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Using conditional variables in the template text',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'In the template text, you can use the variable in '
          'any place inside.\nTo-do so, we must create a scope. '
          'The reason for this is because the '
          'scope will delimit what texts will appear only if the condition is met.\n\n'
          'To create a scope, let\'s start with the open declaration of an scope.'
          'First, surround the variable name, in camel case format, with double curly braces. '
          'Also, add before the variable name, as a preffix, the "#" symbol and, '
          'after the variable name, as a suffix, the name, in camel case format, '
          'of the option you want to use as requirement to display the text.\n'
          'Then, write exactly the same thing but replacing the "#" symbol with '
          'a "/".\nThat will indicate the end of the scope.\n\n',
        ),
        SelectableText(
          'Now, inside the scope, that is, between the double close curly braces and the double open curly braces, '
          'you can write the text that you want to display if the option is the same as the requirement.\n\n',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Dont worry, when using the choice as text, the auto-complete will help you to insert the correct syntax. '
          'Just type in "{" to trigger the auto-complete dialog, and select the variable name with the # prefix.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SelectableText(
          'Continuing with the above example of the discount to new users, '
          'use the following example to understand how to '
          'display a message only if the client target is a new client:',
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
          'Displaying text if the condition is not met',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'You can invert the logic of the condition.\n'
          'That is: you can only display the text inside '
          'the scope if the condition IS NOT met.\n\n'
          'To-do so, you must use the same syntax as '
          'before, but instead of using the "#" symbol '
          'as a prefix, you must use the caret, "^", symbol.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
