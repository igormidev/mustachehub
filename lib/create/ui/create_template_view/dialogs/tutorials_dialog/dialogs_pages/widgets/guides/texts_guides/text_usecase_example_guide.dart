import 'package:flutter/material.dart';

class TextUsecaseExampleGuide extends StatelessWidget {
  const TextUsecaseExampleGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SelectableText(
          'Use case example',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const SelectableText(
          'For instance; you are creating this template with the '
          'intention of sending it to multiple companies seeking an opportunity.\n'
          'For that, you wan\t to use the name of the company in some places throght the text. '
          'And, to achive that, you will want to use a text variable '
          'that will be replaced by the company name when using the template to generate an text output.\n\n',
        ),
      ],
    );
  }
}
