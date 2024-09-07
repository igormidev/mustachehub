import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class TemplateTextResumeGuide extends StatelessWidget {
  const TemplateTextResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftCornerIndicator(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 2),
          SelectableText(
            'Template text',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            'The template text is the main part of the template, '
            'it is where you will write the base text '
            'that the whoevers is using the template will see/copy. '
            'In that template text, you can use the variables '
            'you created to make the text dynamic.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
