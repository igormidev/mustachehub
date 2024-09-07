import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class TextVariablesResumeGuide extends StatelessWidget {
  const TextVariablesResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftCornerIndicator(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            'Text variables',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            'Text variables are the most basic type of variables. '
            'They are used to insert text into the template.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
