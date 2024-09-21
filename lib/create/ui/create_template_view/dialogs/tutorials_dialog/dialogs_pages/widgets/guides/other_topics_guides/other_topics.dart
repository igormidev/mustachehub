import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class OtherTopics extends StatelessWidget {
  const OtherTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return LeftCornerIndicator(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 4),
          SelectableText(
            'Other topics',
            style: Theme.of(context).textTheme.displaySmall,
          ),
          SelectableText(
            'Bellow are some other top-asked topics that you might have doubts about.\n'
            'If what you are searching for is not here, please contact support to ask for help.\n'
            'Your feedback helps us to improve the app and the guides.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
