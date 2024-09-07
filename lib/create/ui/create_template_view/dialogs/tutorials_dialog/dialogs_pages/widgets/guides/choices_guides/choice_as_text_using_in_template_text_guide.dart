import 'package:flutter/material.dart';

class ChoiceAsTextUsingInTemplateTextGuide extends StatelessWidget {
  const ChoiceAsTextUsingInTemplateTextGuide({super.key});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Using selected choice name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        SelectableText(
          'You can display the name of the choosed option in the template text. To-do so, use the suffix '
          '".text" to indicate you want to display name of the option, all of that surrounded by double curly braces.\n\n'
          'Dont worry, when using the choice as text, the auto-complete will help you to insert the correct syntax. '
          'Just type in "{" to trigger the auto-complete dialog, and select the variable name with the ".text" suffix.\n\n',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'Use selected option name example',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'As an example, create a choice variable called "Favorite color" with the options "Red", "Green" and "Blue". '
          'Then, to display the choosed color, follow the bellow example of an template text:',
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
          'color option "Red", the text output will be "My favorite color is Red".',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
