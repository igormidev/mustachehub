import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';

class EmptyCollectionIndicatorPage extends StatelessWidget {
  const EmptyCollectionIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyIndicatorSection.empty(
      text: 'No templates found. Create an template and you will see it here.',
      willHaveCircleAvatarInDarkMode: false,
      children: [
        ElevatedButton.icon(
          icon: const Icon(Icons.add_box_outlined),
          label: const Text('Create a template'),
          onPressed: () {
            context.go('/createMustache');
          },
        ),
      ],
    );
  }
}
