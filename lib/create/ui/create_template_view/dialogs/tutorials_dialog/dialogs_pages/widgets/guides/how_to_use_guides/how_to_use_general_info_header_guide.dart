import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class HowToUseGeneralInfoHeaderGuide extends StatelessWidget {
  const HowToUseGeneralInfoHeaderGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftCornerIndicator(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SelectableText(
            'How-to-use guide',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            'Mustache template aren\'t hard to use and create. With a bref read of this documentation you will already capable of building any text template that you should have in mind.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
