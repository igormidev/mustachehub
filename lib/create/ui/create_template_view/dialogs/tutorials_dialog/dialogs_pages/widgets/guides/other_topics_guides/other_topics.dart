import 'package:flutter/material.dart';

class OtherTopics extends StatelessWidget {
  const OtherTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Other topics',
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const SelectableText(
          'Bellow are some other top-asked topics that you might have doubts about.\n'
          'If what you are searching for is not here, please contact support to ask for help.\n'
          'Your feedback helps us to improve the app and the guides.',
        ),
      ],
    );
  }
}
