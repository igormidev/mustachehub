// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
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
  VariablesInfoHighlightTextEditingController({
    super.text,
    required TextAnalyser textAnalyserBase,
  }) : _textAnalyserBase = textAnalyserBase;

  List<InlineSpan>? getTexts(
    List<AnalysedSegmentStatus> newCacheSegments,
    TextStyle? style,
    BuildContext? context,
  ) {
    final defaultStyle = style ??= const TextStyle();
    final cS =
        _cacheCS ?? (context == null ? null : Theme.of(context).colorScheme);
    if (cS == null) return null;

    return newCacheSegments.map<InlineSpan>((
      AnalysedSegmentStatus analysedSegment,
    ) {
      return analysedSegment.map(
        normalText: (value) {
          return TextSpan(
            text: value.segmentText,
            style: defaultStyle,
          );
        },
        validDeclaration: (value) {
          final validDeclarationStyle = defaultStyle.copyWith(
            color: cS.primary,
            background: Paint()..color = cS.primary.withOpacity(0.2 * 0.5),
          );
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message: 'A valid variable declaration',
                inlineSpan: TextSpan(
                  text: e,
                  style: validDeclarationStyle,
                ),
              );
            }).toList(),
          );
        },
        choiceDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Choice declaration close without an corresponding open declaration.\n\nThat means you are closing a choice (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open choice declaration" using the \'^\' caracter.\n\nExample of a valid choice declaration: {{^isMale}}{{/isMale}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        choiceDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Choice declaration open without an corresponding close declaration.\n\nThat means you are opening a choice (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close choice declaration" using the \'^\' caracter.\n\nExample of a valid choice declaration: {{^isMale}}{{/isMale}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        booleanDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Boolean declaration close without an corresponding open declaration.\n\nThat means you are closing a bolean (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open boolean declaration" using the \'/\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        booleanDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Boolean declaration open without an corresponding close declaration.\n\nThat means you are opening a bolean (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close boolean declaration" using the \'^\' caracter.\n\nExample of a valid bolean declaration: {{^isMale}}{{/isMale}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        invalidMapDeclaration: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Invalid map declaration. A map declaration must have start with a {{^name_of_map}} and end with {{/name_of_map}}.\nExample of a valid map: {{^Person}}{{/Person}}.',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        modelDeclarationOpenWithoutClose: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Item declaration open without an corresponding close declaration.\n\nThat means you are opening a item (using \'/\' caracter) without closing it later in the text.\nTo fix this, you need to create a "close item declaration" using the \'^\' caracter.\n\nExample of a valid item declaration: {{^Person}}{{/Person}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        modelDeclarationCloseWithoutOpen: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Item declaration close without an corresponding open declaration.\n\nThat means you are closing a item (using \'/\' caracter) without opening it first.\nTo fix this, you need to open a "open item declaration" using the \'^\' caracter.\n\nExample of a valid item declaration: {{^Person}}{{/Person}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        hasDelimitterButIsAnVariableWithoutScope: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Item declaration close without an corresponding open declaration.\n\nThat means you are closing a item (using \'^\' caracter) without opening it first.\nTo fix this, you need to open a "open item declaration" using the \'\\\' caracter.\n\nExample of a valid item declaration: {{^Person}}{{/Person}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        declarationOfUncatalogedVariable: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Declaration of uncataloged variable.\n\nThat means you are trying to use a variable that was not declared before.\nTo fix this, you need to create the variable before using it. You can create text, boolean or item variables.',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
        variableExistsButCannotBeUsedInThisContext: (value) {
          return TextSpan(
            children: value.segmentText.characters.map((e) {
              return TooltipSpan(
                message:
                    'Variable exists but cannot be used in this context.\n\nThat means you are trying to use a variable that can\'t be used in that place. For instance; text variable of a item that is trying to be use outside the scope of it.\nWhat is a scope?\nExemple: {{^Person}}declare_persons_variable_only_here{{/Person}}',
                inlineSpan: TextSpan(
                  text: e,
                  style: defaultStyle.copyWith(
                    color: cS.error,
                    background: Paint()
                      ..color = cS.errorContainer.withOpacity(0.2 * 0.5),
                  ),
                ),
              );
            }).toList(),
          );
        },
      );
    }).toList();
  }

  String? cacheText;

  final TextAnalyser _textAnalyserBase;
  Map<String, VariableScopeParentMapper>? _flatMap;
  ColorScheme? _cacheCS;

  Map<String, VariableScopeParentMapper>? get flatMap => _flatMap;

  void update() {
    notifyListeners();
  }

  void setCacheCS(ColorScheme colorScheme) {
    _cacheCS = colorScheme;
    notifyListeners();
  }

  void setFlatMap(Map<String, VariableScopeParentMapper> flatMap) {
    _flatMap = flatMap;
    notifyListeners();
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final typeText = value.text;
    final cursorIndexAtText = value.selection.base.offset;

    if (flatMap != null) {
      final response = _textAnalyserBase.getMatchClusters(
        input: typeText,
        indexAtText: cursorIndexAtText == -1 ? 0 : cursorIndexAtText,
        flatMap: flatMap!,
      );

      final segments = response?.segmentsStates;

      if (segments != null) {
        final spans = getTexts(segments, style, context);

        if (spans != null) {
          return TextSpan(children: spans);
        }
      }
    }

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
            child: Text.rich(inlineSpan),
          ),
        );
}
