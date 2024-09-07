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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
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
                  const Text(
                    'Choose the section you want to read.',
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
            ...mapHierarchy.entries.map(
              (MapEntry<ETutorialSection, List<ETutorialSection>> entry) {
                final ETutorialSection section = entry.key;
                final bool isSelected = section == selectedSection;

                return Column(
                  children: [
                    _ScrollShortcutButton(
                      isMainSection: true,
                      isSelected: isSelected,
                      scrollController: scrollController,
                      section: section,
                    ),
                    ...entry.value.map(
                      (ETutorialSection subSection) {
                        final bool isSelected = subSection == selectedSection;
                        return _ScrollShortcutButton(
                          isMainSection: false,
                          isSelected: isSelected,
                          scrollController: scrollController,
                          section: subSection,
                        );
                      },
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _ScrollShortcutButton extends StatelessWidget {
  final bool isMainSection;
  final ItemScrollController scrollController;
  final ETutorialSection section;
  final bool isSelected;
  const _ScrollShortcutButton({
    required this.isSelected,
    required this.scrollController,
    required this.section,
    required this.isMainSection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: isMainSection ? 0 : 60, bottom: 16),
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
          backgroundColor:
              isSelected ? Theme.of(context).colorScheme.secondary : null,
          foregroundColor:
              isSelected ? Theme.of(context).colorScheme.onSecondary : null,
        ),
        label: Text(section.title),
        icon: const Icon(Icons.transit_enterexit_rounded),
      ),
    );
  }
}
