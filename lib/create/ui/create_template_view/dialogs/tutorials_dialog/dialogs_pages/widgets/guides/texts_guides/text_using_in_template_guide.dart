import 'package:flutter/material.dart';

class TextUsingInTemplateGuide extends StatelessWidget {
  const TextUsingInTemplateGuide({super.key});

  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Theme.of(context).colorScheme.tertiaryContainer,
    );
    const EdgeInsets padding =
        EdgeInsets.symmetric(horizontal: 20, vertical: 14);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 12),
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
        SelectableText(
          'Whoever is using the template will be able to insert the company name '
          'and the text will be displayed as the example above by replacing '
          '"{{companyName}}" with the company name typed by the template user.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
