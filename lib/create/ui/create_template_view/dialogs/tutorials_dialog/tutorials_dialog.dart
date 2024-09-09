import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mustachehub/create/data/enums/e_tutorial_sections.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/dialog_scroll_orientation_page.dart';
import 'package:mustachehub/create/ui/create_template_view/dialogs/tutorials_dialog/dialogs_pages/dialog_tutorial_page.dart';

class TutorialsDialog extends StatefulWidget {
  final ETutorialSection initialSection;
  const TutorialsDialog({
    super.key,
    required this.initialSection,
  });

  @override
  State<TutorialsDialog> createState() => _TutorialsDialogState();
}

class _TutorialsDialogState extends State<TutorialsDialog> {
  late final ItemScrollController scrollController;
  late final ValueNotifier<ETutorialSection> selectedSection;
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create(recordProgrammaticScrolls: false);
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemScrollController shortcutItemScrollController =
      ItemScrollController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ItemPositionsListener shortCutItemPositionsListener =
      ItemPositionsListener.create();

  final ScrollController controller = ScrollController();

  @override
  void initState() {
    super.initState();
    scrollController = ItemScrollController();
    selectedSection = ValueNotifier(widget.initialSection);
    itemPositionsListener.itemPositions.addListener(_setSelectedSection);
  }

  @override
  void dispose() {
    selectedSection.dispose();
    itemPositionsListener.itemPositions.removeListener(_setSelectedSection);
    super.dispose();
  }

  void _setSelectedSection() {
    final items = itemPositionsListener.itemPositions.value;
    final shortCutItems = shortCutItemPositionsListener.itemPositions.value;

    final smallestItemIndex = items.isEmpty
        ? 0
        : items
            .reduce(
              (value, element) =>
                  value.itemLeadingEdge < element.itemLeadingEdge
                      ? value
                      : element,
            )
            .index;

    final currentSection = ETutorialSection.values.firstWhere(
      (element) => element.scrollIndex == (smallestItemIndex - 1),
      orElse: () => ETutorialSection.values.first,
    );

    selectedSection.value = currentSection;
    lastSettedShortcut ??= currentSection;

    print(
        '${shortCutItems.map((e) => e.index)} == ${(currentSection.scrollIndex)}');

    if (_didScroll) {
      if (shortCutItems
          .map((e) => e.index)
          .contains(currentSection.scrollIndex)) {
        return;
      }

      lastSettedShortcut = currentSection;
      shortcutItemScrollController.scrollTo(
          index: currentSection.scrollIndex,
          duration: const Duration(milliseconds: 500));
      // });
    } else {
      _didScroll = true;
    }
  }

  ETutorialSection? lastSettedShortcut;

  bool _didScroll = false;

  // final Debouncer _debouncer = Debouncer(
  //   timerDuration: const Duration(milliseconds: 500),
  // );

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.copyWith(
              titleLarge: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
            ),
      ),
      child: VisibilityWidthBased.fromMediaQueryScreenWidth(
        maximumWidth: ScreenSize.x900,
        replacement: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DialogTutorialPage(
              scrollOffsetListener: scrollOffsetListener,
              initialScrollIndex: widget.initialSection.scrollIndex,
              scrollController: scrollController,
              itemPositionsListener: itemPositionsListener,
            ),
            const SizedBox(width: 20),
            ValueListenableBuilder(
              valueListenable: selectedSection,
              builder: (context, initialTutorialSection, child) {
                return DialogScrollOrientationPage(
                  shortCutItemPositionsListener: shortCutItemPositionsListener,
                  shortcutItemScrollController: shortcutItemScrollController,
                  scrollController: scrollController,
                  selectedSection: initialTutorialSection,
                );
              },
            ),
          ],
        ),
        child: DialogTutorialPage(
          scrollOffsetListener: scrollOffsetListener,
          initialScrollIndex: widget.initialSection.scrollIndex,
          scrollController: scrollController,
          itemPositionsListener: itemPositionsListener,
        ),
      ),
    );
  }
}
