import 'package:flutter/material.dart';
import 'package:text_analyser/text_analyser.dart';

class VariablesInfoHighlightTextEditingController
    extends TextEditingController {
  VariablesInfoHighlightTextEditingController({super.text});

  List<TextSpan> cacheSpans = [];

  void segmentsToTextInline(
    List<AnalysedSegment> segments,
    BuildContext context,
  ) {
    final ColorScheme cS = Theme.of(context).colorScheme;
    final TextStyle defaultStyle =
        Theme.of(context).textTheme.bodyMedium!.copyWith();

    cacheSpans = segments.map((e) {
      return e.map(
        text: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle,
          );
        },
        validDeclaration: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.primary,
              backgroundColor: cS.primaryContainer,
            ),
          );
        },
        invalidMapDeclaration: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        modelDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        modelDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        nonModelVariableWithOpenOrCloseDelimmiter: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        declarationOfUncatalogedVariable: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        variableExistsButCannotBeUsedInThisContext: (value) {
          return TextSpan(
            text: value.content,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
      );
    }).toList();

    cacheText = TextSpan(children: cacheSpans).toPlainText();

    // cacheText = value.text;
    // this.text = TextSpan(children: cacheSpans).toPlainText();

    notifyListeners();
  }

  String? cacheText;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final cacheIsStillValid = cacheText == value.text && cacheSpans.isNotEmpty;
    if (cacheIsStillValid) {
      return TextSpan(children: cacheSpans);
    } else {
      assert(!value.composing.isValid ||
          !withComposing ||
          value.isComposingRangeValid);

      // If the composing range is out of range for the current text, ignore it to
      // preserve the tree integrity, otherwise in release mode a RangeError will
      // be thrown and this EditableText will be built with a broken subtree.
      final bool composingRegionOutOfRange =
          !value.isComposingRangeValid || !withComposing;

      if (composingRegionOutOfRange) {
        return TextSpan(style: style, text: text);
      }

      final TextStyle composingStyle =
          style?.merge(const TextStyle(decoration: TextDecoration.underline)) ??
              const TextStyle(decoration: TextDecoration.underline);
      return TextSpan(
        style: style,
        children: <TextSpan>[
          TextSpan(text: value.composing.textBefore(value.text)),
          TextSpan(
            style: composingStyle,
            text: value.composing.textInside(value.text),
          ),
          TextSpan(text: value.composing.textAfter(value.text)),
        ],
      );
    }
  }
}
