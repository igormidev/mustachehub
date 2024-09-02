import 'package:flutter/material.dart';

class WhatIsCamelCase extends StatelessWidget {
  const WhatIsCamelCase({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          'What is the template text?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'Camel case, also known as camel caps or medial capitals, '
          'is a writing style that combines a sentence with multiple words '
          'into one continuous word by capitalizing each word and omitting '
          'spaces, punctuation and any other special caracter.\nSo the first '
          'word starts with a lowercase, but subsequent words always start '
          'with an uppercase letter.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        SelectableText(
          'What is the reason for using camel case format when using variables in template text?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'In short, to better reconize the variables in template text.\n'
          'Variables already are surrounded by double curly braces '
          'and can have prefixes and suffixes. So to make it easier to '
          'the system to reconize the variable, we don\'t want any special'
          'caracters or spaces that could make the system confuse the reconition '
          'of where the variable starts and ends.\n'
          'And the reason we use camel case format instead of just removing the '
          'spaces is to make the variable name more readable and understandable.\n'
          'For example, you probably will agree that the sentence "I love to create mustache templates" '
          'is more readable as "iLoveToCreateMustacheTemplates" than "ilovetocreatemustachetemplates".',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
