import 'package:flutter/material.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/display_tutorial_button.dart';

class PipeCreationHeader extends StatelessWidget {
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
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: CustomHeader(
          headerTitle: headerTitle,
          headerSubtitle: subtitleSubtitle,
          color: Theme.of(context).colorScheme.primary,
          children: [
            DisplayTutorialButton(selectedSection: selectedSection),
          ],
        ),
      ),
    );
  }
}
