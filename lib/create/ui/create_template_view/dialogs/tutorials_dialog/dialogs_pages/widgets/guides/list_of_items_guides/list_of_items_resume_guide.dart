import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/widgets/commum/left_corner_indicator.dart';

class ListOfItemsResumeGuide extends StatelessWidget {
  const ListOfItemsResumeGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        LeftCornerIndicator(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              SelectableText(
                'List of items variable',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              SelectableText(
                'This is the most "complex" variable that you can create.\n'
                'This variable type is used when you have a list of "items" '
                'that you want to use in the template, and you want to do the same '
                'display logic for each item.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SelectableText(
          'Also, the number of "items" '
          'can vary for each time you use the template. '
          'Please understand the used nomenclature "item" as anything, a company, a person, a product, etc.\n\n'
          'Each item will be composed of a set of variables that you define. Such as a text variable, '
          'conditional, choice or even other sub-items inside the major item.',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
