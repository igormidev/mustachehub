import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:text_analyser/src/models/analysed_segment.dart';
import 'package:text_analyser/src/models/token_identifier.dart';

class AnalysedResponse {
  final Set<TokenIdentifier> tokenIdentifiers;
  final List<AnalysedSegment> segments;

  const AnalysedResponse({
    required this.tokenIdentifiers,
    required this.segments,
  });
}

class TextAnalyserBase {
  const TextAnalyserBase();

  AnalysedResponse? getMatchClusters(
    String input,
    int indexAtText,
    Map<String, TokenIdentifier> flatMap,
  ) {
    final isIndexInText = indexAtText >= 0 && indexAtText < input.length;
    if (isIndexInText == false) {
      return null;
    }

    final Set<TokenIdentifier> validScopesIdentifier = {};
    flatMap.forEach((key, value) {
      if (value.parrentName == null) {
        validScopesIdentifier.add(value);
      }
    });

    final RegExp regExp = RegExp(r'{{[#\/]?(?<name>[a-zA-Z]+?)}}');

    /// The index of the segment and the segment itself
    /// The index should be in increasing order (1, 2, 3, 4, ..., n)
    final Map<int, AnalysedSegment> segments = {};

    int index = -1;

    /// The valid model scopes in the input.
    final Map<String, List<ToAnalyseScope>> modelScopes = {};

    final Map<String, List<ToAnalyseDeclarationModel>>
        notDefininedOpenModelSegments = {};

    final Map<String, List<ToAnalyseDeclaration>> notDefininedNonModelSegments =
        {};

    /// First role of analysis
    input.forEachNamedGroup(
      regExp,
      willContainBeforeAndAfterContentAsNonMatch: false,
      onMatch: (FindedGroup group) {
        index++;

        final TokenIdentifier? tokenIdentifier = flatMap[group.content];

        if (tokenIdentifier == null) {
          segments[index] = AnalysedSegment.declarationOfUncatalogedVariable(
            content: group.fullMatchText,
          );
          return;
        }

        final bool isOpenDelimiter = group.fullMatchText.startsWith('{{#');
        final bool isCloseDelimiter = group.fullMatchText.startsWith('{{/');
        final bool hasDelimiter = isOpenDelimiter || isCloseDelimiter;
        final bool isModel = tokenIdentifier.maybeMap(
          model: (_) => true,
          orElse: () => false,
        );

        /// Only models can have delimiters indicators
        if (hasDelimiter && isModel == false) {
          final seg = AnalysedSegment.nonModelVariableWithOpenOrCloseDelimmiter(
            content: group.fullMatchText,
          );
          segments[index] = seg;
          return;
        }

        if (isModel && hasDelimiter == false) {
          segments[index] = AnalysedSegment.invalidMapDeclaration(
            content: group.fullMatchText,
          );
          return;
        }

        /// It is a valid declaration of a not model
        if (isModel == false) {
          // Root variables are not inside a scope model.
          // There are in the first layer of the variables declaration.
          // For that cases, we don't even have to check if they are valid or not
          // because they don't depend on a scope/context to be used. Can be used globally.
          final isRootTokenIdentifier = tokenIdentifier.parrentName == null;
          if (isRootTokenIdentifier) {
            segments[index] = AnalysedSegment.validDeclaration(
              content: group.fullMatchText,
            );
            return;
          } else {
            final bool dontExistSegmentYet =
                notDefininedNonModelSegments.containsKey(group.content) ==
                    false;
            if (dontExistSegmentYet == false) {
              notDefininedNonModelSegments[group.content] = [];
            }

            notDefininedNonModelSegments[group.content]?.add(
              ToAnalyseDeclaration(
                tokenIdentifier: tokenIdentifier,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
          }
          return;
        }

        // Now, we need to now if the model has a opne and close declaration in somewhere in the text.
        if (notDefininedOpenModelSegments.containsKey(group.content) == false) {
          notDefininedOpenModelSegments[group.content] = [];
        }

        if (isOpenDelimiter) {
          notDefininedOpenModelSegments[group.content]?.add(
            ToAnalyseDeclarationModel(
              tokenIdentifier: tokenIdentifier as ModelTokenIdentifier,
              findedGroup: group,
              indexInSegment: index,
            ),
          );
          return;
        } else {
          final List<ToAnalyseDeclarationModel>? openDeclarations =
              notDefininedOpenModelSegments[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] = AnalysedSegment.modelDeclarationCloseWithoutOpen(
              content: group.fullMatchText,
            );
            return;
          }

          final ToAnalyseDeclarationModel openDeclaration =
              openDeclarations.removeLast();

          segments[index] = AnalysedSegment.validDeclaration(
            content: group.fullMatchText,
          );

          final IdentifierScope scope = IdentifierScope(
            startDeclaration: IdentifierDeclaration(
              start: openDeclaration.findedGroup.globalStart,
              end: openDeclaration.findedGroup.globalEnd,
            ),
            endDeclaration: IdentifierDeclaration(
              start: group.globalStart,
              end: group.globalEnd,
            ),
            identifier: group.content,
          );

          final scopesDir = modelScopes[scope.identifier];
          if (scopesDir == null) {
            modelScopes[scope.identifier] = [];
          }

          modelScopes[scope.identifier]?.add(ToAnalyseScope(
            indexInSegment: modelScopes.keys.length + 1,
            scope: scope,
          ));

          final bool isIndexAtTextWithinScope =
              scope.startDeclaration.end < indexAtText &&
                  indexAtText < scope.endDeclaration.start;

          if (isIndexAtTextWithinScope) {
            validScopesIdentifier.add(tokenIdentifier);
          }

          return;
        }
      },
      onNonMatch: (text) {
        index++;

        segments[index] = AnalysedSegment.text(content: text);
      },
    );

    notDefininedOpenModelSegments.forEach((content, declarations) {
      for (final declaration in declarations) {
        segments[declaration.indexInSegment] =
            AnalysedSegment.modelDeclarationOpenWithoutClose(
          content: declaration.findedGroup.fullMatchText,
        );
      }
    });

    notDefininedNonModelSegments.forEach((content, declarations) {
      for (final declaration in declarations) {
        final List<ToAnalyseScope>? scopesPattern =
            modelScopes[declaration.tokenIdentifier.parrentName];

        final isDeclarationInCorrectScope =
            scopesPattern?.any((ToAnalyseScope analysisModel) {
          return analysisModel.scope.startDeclaration.end <
                  declaration.findedGroup.globalStart &&
              declaration.findedGroup.globalEnd <
                  analysisModel.scope.endDeclaration.start;
        });

        if (isDeclarationInCorrectScope == true) {
          segments[declaration.indexInSegment] =
              AnalysedSegment.validDeclaration(
            content: declaration.findedGroup.fullMatchText,
          );
        } else {
          segments[declaration.indexInSegment] =
              AnalysedSegment.variableExistsButCannotBeUsedInThisContext(
            content: declaration.findedGroup.fullMatchText,
          );
        }
      }
    });

    return AnalysedResponse(
      segments: segments.values.toList(),
      tokenIdentifiers: validScopesIdentifier,
    );
  }
}

class ToAnalyseDeclarationModel {
  final ModelTokenIdentifier tokenIdentifier;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const ToAnalyseDeclarationModel({
    required this.tokenIdentifier,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class ToAnalyseDeclaration {
  final TokenIdentifier tokenIdentifier;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const ToAnalyseDeclaration({
    required this.tokenIdentifier,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class ToAnalyseScope {
  final int indexInSegment;
  final IdentifierScope scope;
  const ToAnalyseScope({
    required this.indexInSegment,
    required this.scope,
  });
}

class IdentifierScope {
  final IdentifierDeclaration startDeclaration;
  final IdentifierDeclaration endDeclaration;
  final String identifier;
  const IdentifierScope({
    required this.startDeclaration,
    required this.endDeclaration,
    required this.identifier,
  });
}

class IdentifierDeclaration {
  final int start;
  final int end;

  const IdentifierDeclaration({
    required this.start,
    required this.end,
  });
}

class TextSegment {
  final int start;
  final int end;
  const TextSegment({
    required this.start,
    required this.end,
  });
}
