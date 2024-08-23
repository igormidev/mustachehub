import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
  late final StreamSubscription<double> pagesListener;
  final ScrollOffsetListener scrollOffsetListener =
      ScrollOffsetListener.create(recordProgrammaticScrolls: false);
  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    scrollController = ItemScrollController();

    selectedSection = ValueNotifier(widget.initialSection);

    // itemPositionsListener.itemPositions.addListener(() {
    //   print('itemsPositions: ${itemPositionsListener.itemPositions.value}');
    // });
    // scrollOffsetListener.changes.listen(
    // (event) {
    itemPositionsListener.itemPositions.addListener(
      () {
        final smallestItemIndex = itemPositionsListener.itemPositions.value
            .reduce(
              (value, element) =>
                  value.itemLeadingEdge < element.itemLeadingEdge
                      ? value
                      : element,
            )
            .index;
        final formated = smallestItemIndex + 1;
        // print('data: $data');
        // final formated = data.round();
        if (formated < ETutorialSection.textVariableResume.scrollIndex) {
          selectedSection.value = ETutorialSection.howToUseGuide;
          return;
        } else if (ETutorialSection.textVariableResume.scrollIndex <=
                formated &&
            formated < ETutorialSection.conditionalVariableResume.scrollIndex) {
          selectedSection.value = ETutorialSection.textVariableResume;
          return;
        } else if (ETutorialSection.conditionalVariableResume.scrollIndex <=
                formated &&
            formated < ETutorialSection.listOfItemVariableResume.scrollIndex) {
          selectedSection.value = ETutorialSection.conditionalVariableResume;
          return;
        } else {
          selectedSection.value = ETutorialSection.listOfItemVariableResume;
          return;
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VisibilityWidthBased.fromMediaQueryScreenWidth(
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
    );
  }
}
