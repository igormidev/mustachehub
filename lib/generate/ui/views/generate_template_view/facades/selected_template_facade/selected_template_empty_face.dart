import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';

class SelectedTemplateEmptyFace extends StatelessWidget {
  const SelectedTemplateEmptyFace({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyIndicatorSection.empty(
      text: 'No template selected',
      willHaveCircleAvatarInDarkMode: true,
      children: [
        const SizedBox(height: 8),
        ElevatedButton.icon(
          icon: const Icon(Icons.collections_bookmark_rounded),
          onPressed: () {
            context.go('/collection');
          },
          label: const Text('Select template'),
        ),
      ],
    );
  }
}
