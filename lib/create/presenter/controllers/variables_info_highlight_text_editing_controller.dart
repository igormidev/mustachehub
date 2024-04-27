// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:text_analyser/text_analyser.dart';

class ContinueFromHerePayload {
  final int startIndex;
  final int endIndex;
  final bool hasTextRemoved;
  final String newText;
  const ContinueFromHerePayload({
    required this.startIndex,
    required this.endIndex,
    required this.newText,
    required this.hasTextRemoved,
  });
}

class VariablesInfoHighlightTextEditingController
    extends TextEditingController {
  VariablesInfoHighlightTextEditingController({super.text});

  List<InlineSpan> cacheSpans = [];
  ColorScheme? cacheCS;
  List<AnalysedSegment> cacheSegments = [];
  TextStyle? cacheDefaultStyle;

  void _segmentsToTextInlineFromCache({
    required ContinueFromHerePayload? continueFrom,
  }) {
    // cacheSpans = [...cacheSegments]
    final TextStyle? defaultStyle = _txStyle;
    if (cacheDefaultStyle == null) return;
    if (defaultStyle == null) return;
    final cS = cacheCS;
    if (cS == null) return;

    // I will add here all segments.
    // The segments that are not envolved with the typed text will be added
    // as they are. The segments that are envolved with the typed text will be
    // splited in three parts: prefix, typed text and suffix.
    final List<AnalysedSegment> newCacheSegments = <AnalysedSegment>[];
    cacheSegments.forEachMapper((
      AnalysedSegment segment,
      bool isFirst,
      bool isLast,
      int index,
    ) {
      final hasContinueFromHere = continueFrom != null;
      if (!hasContinueFromHere) {
        return newCacheSegments.add(segment);
      }

      final offset = segment.offset;
      final segmentText = segment.segmentText;

      final segmentStart = segment.offset.end;
      final segmentEnd = segment.offset.end;

      final wasNewTextTypedInsideThisSegment = continueFrom.startIndex <= segmentStart &&
          continueFrom.endIndex >= segmentEnd;
      if (doesSegmentEndsAfterNewTextBegin == false) {
        return newCacheSegments.add(segment);
      } 

      // The prefix text is the part of the segment that is before the new text.
      final prefixText = ;
    });

    /*
      final segmentLenght = analysedSegment.segmentText.length;
      final endIndex = (startIndex + segmentLenght);
      final newTextStartIndex = continueFrom!.startIndex;
      final newTextEndIndex = continueFrom.startIndex;

      final isContinueFromHere = endIndex >= newTextStartIndex;
      String beforeText;
      String continueFromText;
      String nextText;
      if (isContinueFromHere) {
        beforeText = analysedSegment.segmentText
            .substring(startIndex, newTextStartIndex);
        continueFromText = continueFrom.newText;
        nextText = analysedSegment.segmentText.substring(newTextEndIndex);
      } else {
        beforeText = '';
        continueFromText = '';
        nextText = '';
      }

      startIndex += endIndex;
      */

    cacheSpans = newCacheSegments
        .map<List<InlineSpan>>((AnalysedSegment analysedSegment) {
          analysedSegment.segmentText;
          return analysedSegment.map(
            text: (value) {
              return [
                TextSpan(
                  text: value.segmentText,
                  style: defaultStyle,
                ),
              ];
            },
            validDeclaration: (value) {
              final validDeclarationStyle = defaultStyle.copyWith(
                color: cS.primary,
                backgroundColor: cS.primaryContainer,
              );
              return [
                TooltipSpan(
                  message: 'A valid variable declaration',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: validDeclarationStyle,
                  ),
                ),
              ];
            },
            booleanDeclarationCloseWithoutOpen: (value) {
              return [
                TooltipSpan(
                  message:
                      'Boolean declaration close without an corresponding open declaration.\n\nThat means you are closing a bolean (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open boolean declaration" using the \'/\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            booleanDeclarationOpenWithoutClose: (value) {
              return [
                TooltipSpan(
                  message:
                      'Boolean declaration open without an corresponding close declaration.\n\nThat means you are opening a bolean (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close boolean declaration" using the \'^\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            invalidMapDeclaration: (value) {
              return [
                TooltipSpan(
                  message:
                      'Invalid map declaration. A map declaration must have start with a {{^name_of_map}} and end with {{/name_of_map}}.\nExample of a valid map: {{^Person}}{{/Person}}.',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            modelDeclarationOpenWithoutClose: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration open without an corresponding close declaration.\n\nThat means you are opening a model (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close model declaration" using the \'^\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            modelDeclarationCloseWithoutOpen: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration close without an corresponding open declaration.\n\nThat means you are closing a model (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open model declaration" using the \'^\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            nonModelVariableWithOpenOrCloseDelimmiter: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration close without an corresponding open declaration.\n\nThat means you are closing a model (using \'^\' caracter) without opening it first.\nTo fix this, you need to open a "open model declaration" using the \'\\\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            declarationOfUncatalogedVariable: (value) {
              return [
                TooltipSpan(
                  message:
                      'Declaration of uncataloged variable.\n\nThat means you are trying to use a variable that was not declared before.\nTo fix this, you need to create the variable before using it. You can create text, boolean or model variables.',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            variableExistsButCannotBeUsedInThisContext: (value) {
              return [
                TooltipSpan(
                  message:
                      'Variable exists but cannot be used in this context.\n\nThat means you are trying to use a variable that can\'t be used in that place. For instance; text variable of a model that is trying to be use outside the scope of it.\nWhat is a scope?\nExemple: {{^Person}}declare_persons_variable_only_here{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
          );
        })
        .expand((element) => element)
        .toList();

    cacheText = TextSpan(children: cacheSpans).toPlainText();

    notifyListeners();
  }

   List<InlineSpan> getTexts(
    List<AnalysedSegment> newCacheSegments,
    TextStyle? defaultStyle,
  ) {    final cS = cacheCS;
    if (cS == null) return [];
     return newCacheSegments
        .map<List<InlineSpan>>((AnalysedSegment analysedSegment) {
          analysedSegment.segmentText;
          return analysedSegment.map(
            text: (value) {
              return [
                TextSpan(
                  text: value.segmentText,
                  style: defaultStyle,
                ),
              ];
            },
            validDeclaration: (value) {
              final validDeclarationStyle = defaultStyle.copyWith(
                color: cS.primary,
                backgroundColor: cS.primaryContainer,
              );
              return [
                TooltipSpan(
                  message: 'A valid variable declaration',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: validDeclarationStyle,
                  ),
                ),
              ];
            },
            booleanDeclarationCloseWithoutOpen: (value) {
              return [
                TooltipSpan(
                  message:
                      'Boolean declaration close without an corresponding open declaration.\n\nThat means you are closing a bolean (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open boolean declaration" using the \'/\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            booleanDeclarationOpenWithoutClose: (value) {
              return [
                TooltipSpan(
                  message:
                      'Boolean declaration open without an corresponding close declaration.\n\nThat means you are opening a bolean (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close boolean declaration" using the \'^\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            invalidMapDeclaration: (value) {
              return [
                TooltipSpan(
                  message:
                      'Invalid map declaration. A map declaration must have start with a {{^name_of_map}} and end with {{/name_of_map}}.\nExample of a valid map: {{^Person}}{{/Person}}.',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            modelDeclarationOpenWithoutClose: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration open without an corresponding close declaration.\n\nThat means you are opening a model (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close model declaration" using the \'^\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            modelDeclarationCloseWithoutOpen: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration close without an corresponding open declaration.\n\nThat means you are closing a model (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open model declaration" using the \'^\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            nonModelVariableWithOpenOrCloseDelimmiter: (value) {
              return [
                TooltipSpan(
                  message:
                      'Model declaration close without an corresponding open declaration.\n\nThat means you are closing a model (using \'^\' caracter) without opening it first.\nTo fix this, you need to open a "open model declaration" using the \'\\\' caracter.\n\nExample of a valid model declaration: {{^Person}}{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            declarationOfUncatalogedVariable: (value) {
              return [
                TooltipSpan(
                  message:
                      'Declaration of uncataloged variable.\n\nThat means you are trying to use a variable that was not declared before.\nTo fix this, you need to create the variable before using it. You can create text, boolean or model variables.',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
            variableExistsButCannotBeUsedInThisContext: (value) {
              return [
                TooltipSpan(
                  message:
                      'Variable exists but cannot be used in this context.\n\nThat means you are trying to use a variable that can\'t be used in that place. For instance; text variable of a model that is trying to be use outside the scope of it.\nWhat is a scope?\nExemple: {{^Person}}declare_persons_variable_only_here{{/Person}}',
                  inlineSpan: TextSpan(
                    text: value.segmentText,
                    style: defaultStyle.copyWith(
                      color: cS.error,
                      backgroundColor: cS.errorContainer,
                    ),
                  ),
                ),
              ];
            },
          );
        })
        .expand((element) => element)
        .toList();
  }

  void segmentsToTextInline(
    List<AnalysedSegment> segments,
    BuildContext context,
  ) {return;
    cacheCS = Theme.of(context).colorScheme;
    final TextStyle? defaultStyle = _txStyle;
    cacheDefaultStyle = defaultStyle;
    if (defaultStyle == null) return;
    cacheSegments = segments;

    _segmentsToTextInlineFromCache(
      continueFrom: null,
    );
  }

  InlineSpan getTextSpanWithTooltip(
    String text,
    InlineSpan inlineSpan,
  ) {
    return TooltipSpan(
      inlineSpan: TextSpan(
        text: text,
        style: _txStyle,
      ),
      message: text,
    );
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
    // _segmentsToTextInlineFromCache(
    //   continueFrom: ContinueFromHerePayload(
    //     startIndex: ,
    //     endIndex: ,
    //     newText: typedText,
    //     hasTextRemoved: ,
    //   ),
    // );
    // bananadoceigualmeu
    super.value = newValue;

    // _segmentsToTextInlineFromCache(
    //   continueFrom:
    // );
  }

  TextStyle? _txStyle;
  TextStyle? get txStyle => _txStyle;
  set txStyle(TextStyle? value) {
    _txStyle = value;
    cacheSpans = cacheSpans.map((e) {
      if (e is TooltipSpan) {
        final textWidget = (((e).child as Tooltip).child as Text);
        return TooltipSpan(
          message: ((e).child as Tooltip).message!,
          inlineSpan: TextSpan(
            text: textWidget.data,
            style: textWidget.style?.copyWith(
              fontSize: value?.fontSize,
            ),
          ),
        );
      }
      return TextSpan(
        text: (e as TextSpan).text,
        style: (e).style?.copyWith(
              fontSize: value?.fontSize,
            ),
      );
    }).toList();
    notifyListeners();
  }

  String? cacheText;

  final TextAnalyserBase? textAnalyserBase;
  Map<String, TokenIdentifier>? flatMap;

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    _txStyle ??= style;

    final typeText = value.text;
    final cursorIndexAtText = value.selection.base.offset;

    if(textAnalyserBase == null || flatMap == null) {

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
    } else {

    }
    final response = textAnalyserBase!.getMatchClusters(
      typeText,
      cursorIndexAtText,
      flatMap!,
    );

  }
}

/*
if(continueFrom != null) {
  final startIndex = continueFrom.startIndex;
  final endIndex = continueFrom.endIndex;
  final newText = continueFrom.newText;
  final text = value.segmentText;
  if (text.length < startIndex) {
    return [
      TextSpan(
        text: value.segmentText,
        style: defaultStyle,
      )
    ];
  }
  final prefix = text.substring(0, startIndex);
  final suffix = text.substring(endIndex);
  return [
    TextSpan(
      text: prefix,
      style: defaultStyle,
    ),
    TextSpan(
      text: newText,
      style: defaultStyle.copyWith(
        color: cS.primary,
        backgroundColor: cS.primaryContainer,
      ),
    ),
    TextSpan(
      text: suffix,
      style: defaultStyle,
    ),
  ];
}
*/

class TooltipSpan extends WidgetSpan {
  final String message;
  final InlineSpan inlineSpan;
  TooltipSpan({
    required this.message,
    required this.inlineSpan,
  }) : super(
          child: Tooltip(
            message: message,
            child: Text.rich(
              inlineSpan,
            ),
          ),
        );
}
