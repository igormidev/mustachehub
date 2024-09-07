import 'package:flutter/material.dart';

class UsingAutoCompleteGuide extends StatelessWidget {
  const UsingAutoCompleteGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Using auto-complete',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        SelectableText(
          'The auto-complete feature is a powerful tool that '
          'helps you to write the correct syntax of the variables.\n'
          'To-do that, in the template text, just type in the caracter "{", '
          'and the auto-complete dialog will appear with the list of variables '
          'you created.\n\n'
          'Most variable have more than one usage option, '
          'like conditional for example, that can have # or ^ '
          'as preffix to the name of the variable.\n'
          'The auto-complete will have all usage the options for '
          'each variable, if you have any doubt, just click on the '
          'help icon indicator and you will see a tooltip with '
          'what each usage option does.\nBut for complete knowledge, '
          'you can always check the documentation.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
