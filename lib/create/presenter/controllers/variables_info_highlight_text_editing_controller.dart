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
    final TextStyle? defaultStyle = _txStyle;
    if (defaultStyle == null) return;

    cacheSpans = segments.map((e) {
      return e.map(
        text: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle,
          );
        },
        validDeclaration: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.primary,
              backgroundColor: cS.primaryContainer,
            ),
          );
        },
        booleanDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        booleanDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        invalidMapDeclaration: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        modelDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        modelDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        nonModelVariableWithOpenOrCloseDelimmiter: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        declarationOfUncatalogedVariable: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
        variableExistsButCannotBeUsedInThisContext: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle.copyWith(
              color: cS.error,
              backgroundColor: cS.errorContainer,
            ),
          );
        },
      );
    }).toList();

    cacheText = TextSpan(children: cacheSpans).toPlainText();

    notifyListeners();
  }

  @override
  set value(TextEditingValue newValue) {
    if (value.text != newValue.text) {
      final TextEditingValue tev = value;
      final int oldCursorPos = tev.selection.base.offset;
      final int newCursorPos = newValue.selection.base.offset;
      final bool isRemoving = oldCursorPos > newCursorPos;

      final isControlZ = value.selection.start == value.selection.end;
      final selectedAreaRemovedText = isControlZ
          ? null
          : value.text.substring(value.selection.start, value.selection.end);
      print('CONTROL Z: $selectedAreaRemovedText');

      final amoutErased = value.text.length - newValue.text.length;
      print('AMOUNT ERASED: $amoutErased');

      final String prefixText =
          tev.text.substring(0, oldCursorPos - (isRemoving ? amoutErased : 0));
      final String typedText = isRemoving
          ? value.text.substring(newCursorPos, oldCursorPos)
          : newValue.text.substring(oldCursorPos, newCursorPos);
      final String suffixText = newValue.text.substring(newCursorPos);
      // print('BEFORE: ${value.text} ($prefixText)');
      // print('NEXT: ${newValue.text} ($suffixText)');
      print('($prefixText) ($typedText) ($suffixText)');
      print('-----------------');
    }
    // bananadoceigualmeu
    super.value = newValue;
  }

  TextStyle? _txStyle;
  TextStyle? get txStyle => _txStyle;
  set txStyle(TextStyle? value) {
    _txStyle = value;
    cacheSpans = cacheSpans.map((e) {
      return TextSpan(
        text: e.text,
        style: e.style?.copyWith(
          fontSize: value?.fontSize,
        ),
      );
    }).toList();
    notifyListeners();
  }

  String? cacheText;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    _txStyle ??= style;

    final cacheIsStillValid = cacheText == value.text && cacheSpans.isNotEmpty;

    // final TextEditingValue tev = value;
    // final int cursorPos = tev.selection.base.offset;

    // final String selectedText = selectedTextPayload.text;
    // final String prefixText = tev.text.substring(0, cursorPos);
    // final String suffixText = tev.text.substring(cursorPos);

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
