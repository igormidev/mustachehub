import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class ConditionalVariableResumeGuide extends StatelessWidget {
  const ConditionalVariableResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftCornerIndicator(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 4),
          SelectableText(
            'Conditional variables',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            'The purpose of conditional variables are to decide if a text '
            'will be inserted into the template based on a condition.\n'
            'Whoever is using the template will be able to choose '
            'by a checkbox if the text will be inserted or not.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
