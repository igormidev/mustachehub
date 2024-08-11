import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DialogScrollOrientationPage extends StatelessWidget {
  final ETutorialSection selectedSection;
  final ItemScrollController scrollController;
  const DialogScrollOrientationPage({
    super.key,
    required this.scrollController,
    required this.selectedSection,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: 170,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: [
            const SizedBox(height: 20),
            Stack(
              children: [
                Text(
                  'Scroll\nshortcut',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: CircleAvatar(
                    child: IconButton(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: const Icon(Icons.close),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Choose the section you want to read.',
            ),
            const SizedBox(height: 8),
            ...ETutorialSection.values.map(
              (ETutorialSection section) {
                final bool isSelected = section == selectedSection;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: OutlinedButton.icon(
                    onPressed: () {
                      scrollController.scrollTo(
                        index: section.scrollIndex,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOutCubic,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.zero,
                      backgroundColor: isSelected
                          ? Theme.of(context).colorScheme.secondary
                          : null,
                      foregroundColor: isSelected
                          ? Theme.of(context).colorScheme.onSecondary
                          : null,
                    ),
                    label: Text(section.title),
                    icon: const Icon(Icons.transit_enterexit_rounded),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
