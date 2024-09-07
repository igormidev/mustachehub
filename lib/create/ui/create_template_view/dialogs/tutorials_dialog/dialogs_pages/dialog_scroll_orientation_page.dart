import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class DialogScrollOrientationPage extends StatelessWidget {
  final ETutorialSection selectedSection;
  final ItemScrollController scrollController;
  final ItemScrollController shortcutItemScrollController;
  const DialogScrollOrientationPage({
    super.key,
    required this.scrollController,
    required this.selectedSection,
    required this.shortcutItemScrollController,
  });

  @override
  Widget build(BuildContext context) {
    final children = [
      SizedBox(
        height: 180,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
      ),
      ...mapHierarchy.entries.map(
        (MapEntry<ETutorialSection, List<ETutorialSection>> entry) {
          final ETutorialSection section = entry.key;
          final bool isSelected = section == selectedSection;

          return [
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
          ];
        },
      ).expand((element) => element),
    ];

    return Dialog(
      insetPadding: const EdgeInsets.symmetric(vertical: 24),
      child: SizedBox(
        width: 170,
        // child: ListView(
        //   controller: shortcutItemScrollController,
        //   padding: const EdgeInsets.symmetric(horizontal: 20),
        //   children: children,
        // ),
        child: ScrollablePositionedList.builder(
          initialScrollIndex: 0,
          itemScrollController: shortcutItemScrollController,
          // initialScrollIndex: initialScrollIndex,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          itemCount: children.length,
          itemBuilder: (context, index) {
            return children[index];
          },
        ),
        // child: ScrollablePositionedList.builder(
        //   itemCount: children.length,
        //   itemBuilder: (context, index) => children[index],
        //   itemScrollController: shortcutItemScrollController,
        //   scrollOffsetController: ScrollOffsetController(),
        //   itemPositionsListener: ItemPositionsListener.create(),
        //   scrollOffsetListener: ScrollOffsetListener.create(),
        // ),
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
            index: section.scrollIndex + 1,
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
