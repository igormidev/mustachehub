import 'package:flutter/material.dart';

class TextUsingInTemplateGuide extends StatelessWidget {
  const TextUsingInTemplateGuide({super.key});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.secondaryContainer,
    );
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    return Column(
      children: [
        SelectableText(
          'Using text variables in the template text',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'Continuing with the example of the company name, '
          'in the template text, you can use the variable in '
          'any place inside the template text by writting the variable name, '
          'in camel case format, surrounded by double curly braces.\n'
          'In this case, it would be "{{companyName}}".\n\n'
          'See bellow an example of an template text that uses the company name variable:',
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
      ],
    );
  }
}
