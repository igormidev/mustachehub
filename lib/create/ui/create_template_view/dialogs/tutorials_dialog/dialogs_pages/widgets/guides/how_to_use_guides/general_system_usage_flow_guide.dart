import 'package:flutter/material.dart';

class GeneralSystemUsageFlowGuide extends StatelessWidget {
  const GeneralSystemUsageFlowGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Usage flow',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        SelectableText(
          'The system usage flow is simple and easy to understand. The flow is:',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '1. ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'You create a variable of in the "variable creation section" (first tab).\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '2. ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Then, you write the template you wan\t in the template text section (second tab).\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '3. ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Inside the template text, use the created variables in places you wan\t to dynamically change the text.\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '4. ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text:
                    'Click to test the template to see how it will look like.\n',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              TextSpan(
                text: '5. ',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              TextSpan(
                text: 'Save, use and share the template!',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        SelectableText(
          'To see more details about each step, you can read the '
          'full documentation bellow or just read the part\'s you '
          'really need. Because most of the usage is very intuitive.',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
