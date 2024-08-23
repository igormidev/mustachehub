import 'package:flutter/material.dart';

class HowToUseGeneralInfoHeaderGuide extends StatelessWidget {
  const HowToUseGeneralInfoHeaderGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
      ],
    );
  }
}
