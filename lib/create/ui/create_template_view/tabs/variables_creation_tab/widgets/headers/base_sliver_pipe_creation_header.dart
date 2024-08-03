import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_tutorial_dialog.dart';

class PipeCreationHeader extends StatelessWidget with OpenTutorialDialog {
  final String headerTitle;
  final String subtitleSubtitle;
  final ETutorialSection selectedSection;
  const PipeCreationHeader({
    super.key,
    required this.headerTitle,
    required this.subtitleSubtitle,
    required this.selectedSection,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: CustomHeader(
          headerTitle: headerTitle,
          headerSubtitle: subtitleSubtitle,
          color: Theme.of(context).colorScheme.primary,
          children: [
            Tooltip(
              message: 'Display tutorial about how to use this variable',
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  backgroundColor: colorScheme.tertiaryContainer,
                  foregroundColor: colorScheme.tertiary,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                ),
                onPressed: () {
                  openTutorialDialog(
                    context,
                    section: selectedSection,
                  );
                },
                child: const Row(
                  children: [
                    Text('How to use'),
                    SizedBox(width: 4),
                    Icon(Icons.help),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
