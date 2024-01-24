import 'package:flutter/material.dart';
import 'package:media_query_core/nil.dart';

class VisibilityWidthBased extends StatelessWidget {
  final ScreenSize? minimumWidth;
  final ScreenSize? maximumWidth;
  final Widget? replacement;
  final Widget child;
  final WidthConstraintType type;

  const VisibilityWidthBased.fromMediaQueryScreenWidth({
    super.key,
    this.minimumWidth,
    this.maximumWidth,
    required this.child,
    this.replacement,
  }) : type = WidthConstraintType.globalScreen;

  const VisibilityWidthBased.fromParentMaxWidthConstraint({
    super.key,
    this.minimumWidth,
    this.maximumWidth,
    required this.child,
    this.replacement,
  }) : type = WidthConstraintType.localWidgetContext;

  @override
  Widget build(BuildContext context) {
    final minSize = minimumWidth?.size;
    final maxSize = maximumWidth?.size;

    switch (type) {
      case WidthConstraintType.globalScreen:
        final screenWidth = MediaQuery.of(context).size.width;

        final isMinSizeSmallerThenMaxWidth =
            minSize == null ? true : screenWidth > minSize;
        final isMaxSizeBiggerThenMaxWidth =
            maxSize == null ? true : screenWidth <= maxSize;

        final isWithinRange =
            isMinSizeSmallerThenMaxWidth && isMaxSizeBiggerThenMaxWidth;

        return Visibility(
          visible: isWithinRange,
          replacement: replacement ?? childrenNil,
          child: child,
        );
      case WidthConstraintType.localWidgetContext:
        return LayoutBuilder(
          builder: (context, constraints) {
            final isMinSizeSmallerThenMaxWidth =
                minSize == null ? true : constraints.maxWidth > minSize;
            final isMaxSizeBiggerThenMaxWidth =
                maxSize == null ? true : constraints.maxWidth <= maxSize;

            final isWithinRange =
                isMinSizeSmallerThenMaxWidth && isMaxSizeBiggerThenMaxWidth;

            print('maxWidth: ${constraints.maxWidth}');

            return Visibility(
              visible: isWithinRange,
              replacement: replacement ?? childrenNil,
              child: child,
            );
          },
        );
    }
  }
}

enum WidthConstraintType {
  globalScreen,
  localWidgetContext,
}

enum ScreenSize {
  x100(100),
  x200(200),
  x300(300),
  x400(400),
  x500(500),
  x600(600),
  x700(700),
  x800(800),
  x900(900),
  x1000(1000),
  x1100(1100),
  x1200(1200),
  x1300(1300),
  x1400(1400),
  x1500(1500),
  x1600(1600),
  x1700(1700),
  x1800(1800),
  x1900(1900),
  x2000(2000);

  final double size;
  const ScreenSize(this.size);
}
