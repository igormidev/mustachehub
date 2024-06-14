// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:enchanted_regex/enchanted_regex.dart';
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
        notDefininedTextsInModelSegments = {};
    final Map<String, List<ToAnalyseDeclarationBooleanCluster>>
        notDefininedBooleansInModelSegments = {};

    printDetails() {
      return;
/*
The {{#person}}

asds {{name}} 
{{/person}} 
*/

      // print('--------------$index--------------');
      // print(segments.entries
      //     .map((e) => '${e.key}: "${e.value.segmentText}"')
      //     .join('\n'));
      // print('then open model segments ******');
      // print(notDefininedTextsInModelSegments.entries
      //     .map((e) => '${e.key}: ${e.value}')
      //     .join('\n'));
      // print(notDefininedOpenModelSegments.entries
      //     .map((e) => '${e.key}: ${e.value}')
      //     .join('\n'));
      // print('nonDefinedLenght: ${notDefininedOpenModelSegments.length}');
    }

    /// First role of analysis
    input.forEachNamedGroup(
      regExp,
      willContainBeforeAndAfterContentAsNonMatch: false,
      onMatch: (FindedGroup group) {
        index++;

        if (index == 3) {
          print('isIndex => $index');
        }

        final TokenIdentifier? tokenIdentifier = flatMap[group.content];

        final offset = TextOffset(
          start: group.globalStart,
          end: group.globalEnd,
        );

        if (tokenIdentifier == null) {
          segments[index] = AnalysedSegment.declarationOfUncatalogedVariable(
            offset: offset,
            segmentText: group.fullMatchText,
          );
          printDetails();
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
            offset: offset,
            segmentText: group.fullMatchText,
          );
          segments[index] = seg;
          printDetails();
          return;
        }

        if ((isModel || isBoolean) && hasDelimiter == false) {
          segments[index] = AnalysedSegment.invalidMapDeclaration(
            offset: offset,
            segmentText: group.fullMatchText,
          );
          printDetails();
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
              offset: offset,
              segmentText: group.fullMatchText,
            );
          } else {
            final bool dontExistSegmentYet =
                notDefininedTextsInModelSegments.containsKey(group.content) ==
                    false;
            if (dontExistSegmentYet) {
              notDefininedTextsInModelSegments[group.content] = [];
            }

            notDefininedTextsInModelSegments[group.content]?.add(
              ToAnalyseDeclarationText(
                tokenIdentifier: tokenIdentifier as TextTokenIdentifier,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
          }
          printDetails();
          return;
        } else if (isBoolean) {
          // Now, we need to now if the boolean has a open and close declaration in somewhere in the text.

          final bool dontExistSegmentYet =
              notDefininedOpenBooleanSegments.containsKey(group.content) ==
                  false;
          if (dontExistSegmentYet) {
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
            printDetails();
            return;
          }

          final List<ToAnalyseDeclarationBoolean>? openDeclarations =
              notDefininedOpenBooleanSegments[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] =
                AnalysedSegment.booleanDeclarationCloseWithoutOpen(
              offset: offset,
              segmentText: group.fullMatchText,
            );
          } else {
            final ToAnalyseDeclarationBoolean openDeclaration =
                notDefininedOpenBooleanSegments[group.content]!.removeLast();
            final isRootTokenIdentifier = tokenIdentifier.parrentName == null;
            if (isRootTokenIdentifier) {
              segments[openDeclaration.indexInSegment] =
                  AnalysedSegment.validDeclaration(
                offset: offset,
                segmentText: openDeclaration.findedGroup.fullMatchText,
              );

              segments[index] = AnalysedSegment.validDeclaration(
                offset: offset,
                segmentText: group.fullMatchText,
              );
              return;
            }

            final bool dontExistBooleanSegmentYet =
                notDefininedBooleansInModelSegments
                        .containsKey(group.content) ==
                    false;

            if (dontExistBooleanSegmentYet) {
              notDefininedBooleansInModelSegments[group.content] = [];
            }

            final scope = ToAnalyseDeclarationBooleanCluster(
              open: ToAnalyseDeclarationBoolean(
                tokenIdentifier: openDeclaration.tokenIdentifier,
                findedGroup: openDeclaration.findedGroup,
                indexInSegment: openDeclaration.indexInSegment,
              ),
              close: ToAnalyseDeclarationBoolean(
                tokenIdentifier: tokenIdentifier as BooleanTokenIdentifier,
                findedGroup: group,
                indexInSegment: index,
              ),
            );

            notDefininedBooleansInModelSegments[group.content]?.add(
              scope,
            );
          }

          printDetails();
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
          printDetails();
          return;
        } else {
          final List<ToAnalyseDeclarationModel>? openDeclarations =
              notDefininedOpenModelSegments[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] = AnalysedSegment.modelDeclarationCloseWithoutOpen(
              offset: offset,
              segmentText: group.fullMatchText,
            );
            printDetails();
            return;
          }

          final ToAnalyseDeclarationModel openDeclaration =
              notDefininedOpenModelSegments[group.content]!.removeLast();

          segments[index] = AnalysedSegment.validDeclaration(
            offset: offset,
            segmentText: group.fullMatchText,
          );

          segments[openDeclaration.indexInSegment] =
              AnalysedSegment.validDeclaration(
            offset: TextOffset(
              start: openDeclaration.findedGroup.globalStart,
              end: openDeclaration.findedGroup.globalEnd,
            ),
            segmentText: openDeclaration.findedGroup.fullMatchText,
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
          printDetails();
          return;
        }
      },
      onNonMatch: (text) {
        index++;

        segments[index] = AnalysedSegment.text(
          offset: TextOffset(
            start: text.globalStart,
            end: text.globalEnd,
          ),
          segmentText: text.content,
        );
        printDetails();
      },
    );

    notDefininedOpenModelSegments.forEach((content, declarations) {
      for (final declaration in declarations) {
        segments[declaration.indexInSegment] =
            AnalysedSegment.modelDeclarationOpenWithoutClose(
          offset: TextOffset(
            start: declaration.findedGroup.globalStart,
            end: declaration.findedGroup.globalEnd,
          ),
          segmentText: declaration.findedGroup.fullMatchText,
        );
      }
    });

    notDefininedOpenBooleanSegments.forEach(
      (content, declarations) {
        for (final declaration in declarations) {
          segments[declaration.indexInSegment] =
              AnalysedSegment.booleanDeclarationOpenWithoutClose(
            offset: TextOffset(
              start: declaration.findedGroup.globalStart,
              end: declaration.findedGroup.globalEnd,
            ),
            segmentText: declaration.findedGroup.fullMatchText,
          );
        }
      },
    );

    // Now, let's check if the text declarations that need
    // to be inside a model scope are valid.
    // To be valid they need to be inside there model scope.
    notDefininedTextsInModelSegments.forEach(
      (_, List<ToAnalyseDeclarationText> declarations) {
        // Let's check each text declaration
        for (final ToAnalyseDeclarationText declaration in declarations) {
          // Get the analyse scope of the parrent of the text declaration.
          // That is: The model scope the text is inside.
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
              offset: TextOffset(
                start: declaration.findedGroup.globalStart,
                end: declaration.findedGroup.globalEnd,
              ),
              segmentText: declaration.findedGroup.fullMatchText,
            );
          } else {
            segments[declaration.indexInSegment] =
                AnalysedSegment.variableExistsButCannotBeUsedInThisContext(
              offset: TextOffset(
                start: declaration.findedGroup.globalStart,
                end: declaration.findedGroup.globalEnd,
              ),
              segmentText: declaration.findedGroup.fullMatchText,
            );
          }
        }
      },
    );

    // Now, let's check if the boolean declarations that need
    // to be inside a model scope are valid.
    // To be valid they need to be inside there model scope.
    notDefininedBooleansInModelSegments.forEach(
      (_, List<ToAnalyseDeclarationBooleanCluster> declarations) {
        for (final ToAnalyseDeclarationBooleanCluster declaration
            in declarations) {
          final List<ToAnalyseScope>? scopesPattern =
              modelScopes[declaration.open.tokenIdentifier.parrentName];

          final isDeclarationInCorrectScope =
              scopesPattern?.any((ToAnalyseScope analysisModel) {
            return analysisModel.scope.startDeclaration.end <
                    declaration.open.findedGroup.globalStart &&
                declaration.close.findedGroup.globalEnd <
                    analysisModel.scope.endDeclaration.start;
          });

          if (isDeclarationInCorrectScope == true) {
            segments[declaration.open.indexInSegment] =
                AnalysedSegment.validDeclaration(
              offset: TextOffset(
                start: declaration.open.findedGroup.globalStart,
                end: declaration.open.findedGroup.globalEnd,
              ),
              segmentText: declaration.open.findedGroup.fullMatchText,
            );

            segments[declaration.close.indexInSegment] =
                AnalysedSegment.validDeclaration(
              offset: TextOffset(
                start: declaration.close.findedGroup.globalStart,
                end: declaration.close.findedGroup.globalEnd,
              ),
              segmentText: declaration.close.findedGroup.fullMatchText,
            );
          } else {
            segments[declaration.open.indexInSegment] =
                AnalysedSegment.variableExistsButCannotBeUsedInThisContext(
              offset: TextOffset(
                start: declaration.open.findedGroup.globalStart,
                end: declaration.open.findedGroup.globalEnd,
              ),
              segmentText: declaration.open.findedGroup.fullMatchText,
            );

            segments[declaration.close.indexInSegment] =
                AnalysedSegment.variableExistsButCannotBeUsedInThisContext(
              offset: TextOffset(
                start: declaration.close.findedGroup.globalStart,
                end: declaration.close.findedGroup.globalEnd,
              ),
              segmentText: declaration.close.findedGroup.fullMatchText,
            );
          }
        }
      },
    );

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

  @override
  String toString() =>
      'ToAnalyseDeclarationModel(tokenIdentifier: $tokenIdentifier, findedGroup: $findedGroup, indexInSegment: $indexInSegment)';
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

class ToAnalyseDeclarationBooleanCluster {
  final ToAnalyseDeclarationBoolean open;
  final ToAnalyseDeclarationBoolean close;
  const ToAnalyseDeclarationBooleanCluster({
    required this.open,
    required this.close,
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
