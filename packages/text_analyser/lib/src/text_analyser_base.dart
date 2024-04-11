import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:text_analyser/src/models/analysed_segment.dart';
import 'package:text_analyser/src/models/token_identifier.dart';
import 'package:text_analyser/src/models/variable_implementation.dart';

class AnalysedResponse {
  final Set<VariableImplementation> tokenIdentifiers;
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
    final isIndexInText = indexAtText >= 0 && indexAtText <= input.length;
    if (isIndexInText == false) {
      return null;
    }

    final Set<ModelTokenIdentifier> validScopesIdentifier = {};
    final Set<VariableImplementation> validVariables = {};
    flatMap.forEach((key, value) {
      if (value.parrentName == null) {
        value.map(
          model: (model) {
            validVariables.add(VariableImplementation.model(
              modelTokenIdentifier: model,
            ));
          },
          boolean: (boolean) {
            validVariables.add(VariableImplementation.boolean(
              booleanTokenIdentifier: boolean,
              booleanImplementation: BooleanImplementation.normalValue(),
            ));
            validVariables.add(VariableImplementation.boolean(
              booleanTokenIdentifier: boolean,
              booleanImplementation: BooleanImplementation.invertedValue(),
            ));
          },
          text: (text) {
            validVariables.add(VariableImplementation.text(
              textTokenIdentifier: text,
            ));
          },
        );
      }
    });

    final RegExp regExp = RegExp(r'{{[\^#\/]?(?<name>[a-zA-Z]+?)}}');

    /// The index of the segment and the segment itself
    /// The index should be in increasing order (1, 2, 3, 4, ..., n)
    final Map<int, AnalysedSegment> segments = {};

    int index = -1;

    /// The valid model scopes in the input.
    final Map<String, List<ToAnalyseScope>> modelScopes = {};

    final Map<String, List<ToAnalyseDeclarationModel>>
        notDefininedOpenModelSegments = {};

    final Map<String, List<ToAnalyseDeclarationBoolean>>
        notDefininedOpenBooleanSegments = {};

    final Map<String, List<ToAnalyseDeclarationText>>
        notDefininedNonModelSegments = {};

    /// First role of analysis
    input.forEachNamedGroup(
      regExp,
      willContainBeforeAndAfterContentAsNonMatch: false,
      onMatch: (FindedGroup group) {
        index++;

        final TokenIdentifier? tokenIdentifier = flatMap[group.content];

        if (tokenIdentifier == null) {
          segments[index] = AnalysedSegment.declarationOfUncatalogedVariable(
            segmentText: group.fullMatchText,
          );
          return;
        }

        final bool isModel = tokenIdentifier.maybeMap(
          model: (_) => true,
          orElse: () => false,
        );
        final bool isBoolean = tokenIdentifier.maybeMap(
          boolean: (_) => true,
          orElse: () => false,
        );
        final bool isText = tokenIdentifier.maybeMap(
          text: (_) => true,
          orElse: () => false,
        );

        final bool isNormalOpenDelimiter =
            group.fullMatchText.startsWith('{{#');
        final bool isInverseOpenDelimiter =
            group.fullMatchText.startsWith('{{^');
        final bool isCloseDelimiter = group.fullMatchText.startsWith('{{/');
        final bool hasDelimiter = isNormalOpenDelimiter ||
            isCloseDelimiter ||
            (isInverseOpenDelimiter && isBoolean);

        /// Only models can have delimiters indicators
        if (hasDelimiter && isModel == false && isBoolean == false) {
          final seg = AnalysedSegment.nonModelVariableWithOpenOrCloseDelimmiter(
            segmentText: group.fullMatchText,
          );
          segments[index] = seg;
          return;
        }

        if ((isModel || isBoolean) && hasDelimiter == false) {
          segments[index] = AnalysedSegment.invalidMapDeclaration(
            segmentText: group.fullMatchText,
          );
          return;
        }

        /// It is a valid declaration of a not model
        if (isText) {
          // Root variables are not inside a scope model.
          // There are in the first layer of the variables declaration.
          // For that cases, we don't even have to check if they are valid or not
          // because they don't depend on a scope/context to be used. Can be used globally.
          final isRootTokenIdentifier = tokenIdentifier.parrentName == null;
          if (isRootTokenIdentifier) {
            segments[index] = AnalysedSegment.validDeclaration(
              segmentText: group.fullMatchText,
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
              ToAnalyseDeclarationText(
                tokenIdentifier: tokenIdentifier as TextTokenIdentifier,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
          }
          return;
        } else if (isBoolean) {
          // Now, we need to now if the boolean has a open and close declaration in somewhere in the text.
          if (notDefininedOpenBooleanSegments.containsKey(group.content) ==
              false) {
            notDefininedOpenBooleanSegments[group.content] = [];
          }

          if (isNormalOpenDelimiter || isInverseOpenDelimiter) {
            notDefininedOpenBooleanSegments[group.content]?.add(
              ToAnalyseDeclarationBoolean(
                tokenIdentifier: tokenIdentifier as BooleanTokenIdentifier,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
            return;
          }

          final List<ToAnalyseDeclarationBoolean>? openDeclarations =
              notDefininedOpenBooleanSegments[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] =
                AnalysedSegment.booleanDeclarationCloseWithoutOpen(
              segmentText: group.fullMatchText,
            );
          } else {
            final ToAnalyseDeclarationBoolean openDeclaration =
                openDeclarations.removeLast();

            segments[openDeclaration.indexInSegment] =
                AnalysedSegment.validDeclaration(
              segmentText: openDeclaration.findedGroup.fullMatchText,
            );

            segments[index] = AnalysedSegment.validDeclaration(
              segmentText: group.fullMatchText,
            );
          }

          return;
        }

        // Now, we need to now if the model has a open and close declaration in somewhere in the text.
        if (notDefininedOpenModelSegments.containsKey(group.content) == false) {
          notDefininedOpenModelSegments[group.content] = [];
        }

        if (isNormalOpenDelimiter) {
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
              segmentText: group.fullMatchText,
            );
            return;
          }

          final ToAnalyseDeclarationModel openDeclaration =
              openDeclarations.removeLast();

          segments[index] = AnalysedSegment.validDeclaration(
            segmentText: group.fullMatchText,
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
            validScopesIdentifier.add(tokenIdentifier as ModelTokenIdentifier);
          }

          return;
        }
      },
      onNonMatch: (text) {
        index++;

        segments[index] = AnalysedSegment.text(segmentText: text);
      },
    );

    notDefininedOpenModelSegments.forEach((content, declarations) {
      for (final declaration in declarations) {
        segments[declaration.indexInSegment] =
            AnalysedSegment.modelDeclarationOpenWithoutClose(
          segmentText: declaration.findedGroup.fullMatchText,
        );
      }
    });

    notDefininedOpenBooleanSegments.forEach((content, declarations) {
      for (final declaration in declarations) {
        segments[declaration.indexInSegment] =
            AnalysedSegment.booleanDeclarationOpenWithoutClose(
          segmentText: declaration.findedGroup.fullMatchText,
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
            segmentText: declaration.findedGroup.fullMatchText,
          );
        } else {
          segments[declaration.indexInSegment] =
              AnalysedSegment.variableExistsButCannotBeUsedInThisContext(
            segmentText: declaration.findedGroup.fullMatchText,
          );
        }
      }
    });

    final sortedSegmentsEntries = segments
        .castToList((key, value) => MapEntry(key, value))
      ..sort((a, b) => a.key.compareTo(b.key));

    final List<AnalysedSegment> sortedSegments =
        sortedSegmentsEntries.map((e) => e.value).toList();

    for (final ModelTokenIdentifier identifier in validScopesIdentifier) {
      validVariables.add(VariableImplementation.model(
        modelTokenIdentifier: identifier,
      ));

      for (final subModelName in identifier.subModelsNames) {
        final isSubModelAlreadyDefined = validVariables.any((element) {
          return element.maybeMap(
            model: (value) {
              return value.modelTokenIdentifier.name == subModelName;
            },
            orElse: () => false,
          );
        });
        if (isSubModelAlreadyDefined) {
          continue;
        }

        final TokenIdentifier? tokenIdentifier = flatMap[subModelName];
        if (tokenIdentifier == null ||
            tokenIdentifier is! ModelTokenIdentifier) {
          continue;
        }

        validVariables.add(VariableImplementation.model(
          modelTokenIdentifier: tokenIdentifier,
        ));
      }

      for (final booleanName in identifier.booleanNames) {
        validVariables.add(VariableImplementation.boolean(
          booleanTokenIdentifier: BooleanTokenIdentifier(
            parrentName: identifier.name,
            name: booleanName,
          ),
          booleanImplementation: BooleanImplementation.normalValue(),
        ));
        validVariables.add(VariableImplementation.boolean(
          booleanTokenIdentifier: BooleanTokenIdentifier(
            parrentName: identifier.name,
            name: booleanName,
          ),
          booleanImplementation: BooleanImplementation.invertedValue(),
        ));
      }

      for (final textName in identifier.textsNames) {
        validVariables.add(VariableImplementation.text(
          textTokenIdentifier: TextTokenIdentifier(
            parrentName: identifier.name,
            name: textName,
          ),
        ));
      }
    }

    return AnalysedResponse(
      segments: sortedSegments,
      tokenIdentifiers: validVariables,
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

class ToAnalyseDeclarationBoolean {
  final BooleanTokenIdentifier tokenIdentifier;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const ToAnalyseDeclarationBoolean({
    required this.tokenIdentifier,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class ToAnalyseDeclarationText {
  final TextTokenIdentifier tokenIdentifier;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const ToAnalyseDeclarationText({
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