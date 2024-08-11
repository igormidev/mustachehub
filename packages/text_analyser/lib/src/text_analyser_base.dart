// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:text_analyser/src/models/analysed_response.dart';
import 'package:text_analyser/src/models/analysed_segment_status.dart';
import 'package:text_analyser/src/models/choosable_variable_implementations/choosable_variable_implementations.dart';
import 'package:text_analyser/src/models/choosable_variable_implementations/use_implementations_models/boolean_use_implementations.dart';
import 'package:text_analyser/src/models/choosable_variable_implementations/use_implementations_models/choice_use_implementation.dart';
import 'package:text_analyser/src/models/variable_scope_parent_mapper.dart';

class TextAnalyserBaseLegacy {
  const TextAnalyserBaseLegacy();

  AnalysedResponse? getMatchClusters(
    String input,
    int indexAtText,
    Map<String, VariableScopeParentMapper> flatMap,
  ) {
    final isIndexInText = indexAtText >= 0 && indexAtText <= input.length;
    if (isIndexInText == false) {
      return null;
    }

    /// This list contains all model scopes that the text cursor is inside.
    ///
    /// Later on we will use this info to check if a variable parrent
    final Set<ModelParentMapper> modelsThatCursorIndexIsInsideScope = {};

    /// Variables that can be used in the current context the mouse cursor is.
    ///
    /// This includes all root variables and the variables inside a model that
    /// the textfield cursor is inside that model scole.
    final Set<ChoosableVariableImplementations>
        usableVariablesInCurrentContext = {};

    flatMap.forEach((key, value) {
      if (value.parrentName == null) {
        value.map(
          model: (model) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.model(
              variableName: model.name,
            ));
          },
          boolean: (boolean) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.boolean(
              variableName: boolean.name,
              booleanImplementation: BooleanUseImplementation.normalValue(),
            ));
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.boolean(
              variableName: boolean.name,
              booleanImplementation: BooleanUseImplementation.invertedValue(),
            ));
          },
          // choice: (choice) {
          //   usableVariablesInCurrentContext
          //       .add(ChoosableVariableImplementations.choice(
          //     variableName: choice.name,
          //     choiceImplementation: ChoiceUseImplementation.normalValue(),
          //   ));
          //   usableVariablesInCurrentContext
          //       .add(ChoosableVariableImplementations.choice(
          //     variableName: choice.name,
          //     choiceImplementation: ChoiceUseImplementation.invertedValue(),
          //   ));
          //   usableVariablesInCurrentContext.add(
          //       ChoosableVariableImplementations.choice(
          //           variableName: choice.name,
          //           choiceImplementation: ChoiceUseImplementation.textValue()));
          // },
          text: (text) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.text(
              variableName: text.name,
            ));
          },
        );
      }
    });

    /// The regular expression to find the mustache template variables.
    final RegExp regExp = RegExp(r'{{[\^#\/]?(?<name>[a-zA-Z]+?)}}');

    /// The key represents the index of the segment in the text.
    /// That is, each [input.forEachNamedGroup] iteration will
    /// increment the index by one. That index is used to identify
    /// the order that each segment apears in the text.
    ///
    /// The value is the segment itself.
    ///
    /// The index should be in increasing order (1, 2, 3, 4, ..., n)
    ///
    /// This value will be returned in the [AnalysedResponse] in the final
    ///
    /// We need to separate the segments and re-group them again because
    /// calculations will be done to check if the segments are valid or not.
    final Map<int, AnalysedSegmentStatus> segments = {};

    /// The curent index the interator currently is in the text.
    ///
    /// In the start of each iteration, the index is incremented by one.
    int index = -1;

    /// All the model scopes that exists in the [input].
    /// Not necessary only the models that the cursor
    /// is inside (that is [modelsThatCursorIndexIsInsideScope]) variable
    ///
    /// The key is the name of the model [mustacheName].
    /// The value is a list of all the scopes that model has that name.
    ///
    ///
    /// This does not mean that the model is valid. It just means that the model
    /// is closing a scope. But it can be, for example, a sub model that was
    /// declared outside of his parent model scope.
    final Map<String, List<ToAnalyseScope>> allModelScopesByMustacheName = {};

    /// These are the open model declarations finded in the text
    /// that don't have a close declaration yet. In the main interation,
    /// for each close declaration it will check here if there is a
    /// corresponding open declaration for him. If not, we can declare it
    /// as a close wihout open declaration. If yes, it is a valid declaration.
    /// And if after the main iteration there are still open declarations
    /// here, we can declare them as open without close declaration.
    ///
    /// The key is the name of the model variable.
    /// The value is a list of all the open declarations of that
    /// model variable declarations throughout the text that don't have
    /// a close declaration yet.
    final Map<String, List<OpenModelDeclarationPayload>>
        openModelDeclarationsWithoutFindedCloseYet = {};

    /// These are the open booleans declarations finded in the text
    /// that don't have a close declaration yet. In the main interation,
    /// for each close declaration it will check here if there is a
    /// corresponding open declaration for him. If not, we can declare it
    /// as a close wihout open declaration. If yes, it is a valid declaration.
    /// And if after the main iteration there are still open declarations
    /// here, we can declare them as open without close declaration.
    ///
    /// The key is the name of the boolean variable.
    /// The value is a list of all the open declarations of that
    /// boolean variable declarations throughout the text that don't have
    /// a close declaration yet.
    final Map<String, List<OpenBooleanDeclarationPayload>>
        openBooleanDeclarationsWithoutFindedCloseYet = {};

    /// We will stock here all texts variables that have a parent
    ///
    /// In the end, we will check if the text declaration is
    /// inside a scope that is valid for the text to be used.
    ///
    /// The key is the name of the text variable.
    /// The value is an list of all the declarations of that
    /// text variable throughout the text. Some of them can be
    /// valid, some of them can be invalid (outside the parent
    /// model scope). So we will check one by one.
    final Map<String, List<TextParentScopeValidationPayload>>
        textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = {};

    /// We will stock here all booleans variables that have a parent
    /// and the open and close declarations are in the correct scope.
    ///
    /// In the end, we will check if the boolean declaration is
    /// inside a scope that is valid for the boolean to be used.
    ///
    /// PS: The open and close declarations need to be in the
    /// same scope, both of them.
    ///
    /// The key is the name of the boolean variable.
    /// The value is an list of all the declarations of that
    /// boolean variable throughout the text. Some of them can be
    /// valid, some of them can be invalid (outside the parent
    /// model scope). So we will check one by one.
    final Map<String, List<BooleanParentScopeValidationPayload>>
        booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = {};

    /// We will stock here all models variables that have a parent
    /// and the open and close declarations are in the correct scope.
    ///
    /// In the end, we will check if the model declaration is
    /// inside a scope that is valid for the model to be used.
    ///
    /// PS: The open and close declarations need to be in the
    /// same scope, both of them.
    ///
    /// The key is the name of the model variable.
    /// The value is an list of all the declarations of that
    /// model variable throughout the text. Some of them can be
    /// valid, some of them can be invalid (outside the parent
    /// model scope). So we will check one by one.
    final List<List<ModelParentScopeValidationPayload>>
        modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = [];

    /// Will set the scope of the model in the [allModelScopesByMustacheName]
    /// Also, if the [indexAtText] is inside the scope, will add the model
    /// to the [modelsThatCursorIndexIsInsideScope]
    void handleFindedModelScope({
      required VariableScopeParentMapper? tokenIdentifier,
      required FindedGroup startFindedGroup,
      required FindedGroup endFindedGroup,
    }) {
      final IdentifierScope scope = IdentifierScope(
        startDeclaration: IdentifierDeclaration(
          start: startFindedGroup.globalStart,
          end: startFindedGroup.globalEnd,
        ),
        endDeclaration: IdentifierDeclaration(
          start: endFindedGroup.globalStart,
          end: endFindedGroup.globalEnd,
        ),
        identifier: endFindedGroup.content,
      );

      final scopesDir = allModelScopesByMustacheName[scope.identifier];
      if (scopesDir == null) {
        allModelScopesByMustacheName[scope.identifier] = [];
      }

      allModelScopesByMustacheName[scope.identifier]?.add(ToAnalyseScope(
        indexInSegment: allModelScopesByMustacheName.keys.length + 1,
        scope: scope,
      ));

      final bool isIndexAtTextWithinScope =
          scope.startDeclaration.end < indexAtText &&
              indexAtText < scope.endDeclaration.start;

      if (isIndexAtTextWithinScope) {
        modelsThatCursorIndexIsInsideScope
            .add(tokenIdentifier as ModelParentMapper);
      }
    }

    /// The main interation to map all variables
    input.forEachNamedGroup(
      regExp,
      willContainBeforeAndAfterContentAsNonMatch: false,
      onMatch: (FindedGroup group) {
        index++;

        final VariableScopeParentMapper? varScopeParentMapper =
            flatMap[group.content];

        final TextOffset offset = TextOffset(
          start: group.globalStart,
          end: group.globalEnd,
        );

        /// If the variable is not in the flat map, it is an uncataloged variable.
        /// A variable that the user did not create before using it.
        /// Or maybe he just wrote it wrong by one caracter. Anyway, it is not
        /// a valid variable.
        final bool isUncatologedVariable = varScopeParentMapper == null;
        if (isUncatologedVariable) {
          segments[index] =
              AnalysedSegmentStatus.declarationOfUncatalogedVariable(
            offset: offset,
            segmentText: group.fullMatchText,
          );
          return;
        }

        final bool isModel = varScopeParentMapper.maybeMap(
          model: (_) => true,
          orElse: () => false,
        );
        final bool isBoolean = varScopeParentMapper.maybeMap(
          boolean: (_) => true,
          orElse: () => false,
        );
        final bool isText = varScopeParentMapper.maybeMap(
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
          segments[index] =
              AnalysedSegmentStatus.hasDelimitterButIsAnVariableWithoutScope(
            offset: offset,
            segmentText: group.fullMatchText,
          );

          return;
        }

        if ((isModel || isBoolean) && hasDelimiter == false) {
          segments[index] = AnalysedSegmentStatus.invalidMapDeclaration(
            offset: offset,
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
          final isRootTokenIdentifier =
              varScopeParentMapper.parrentName == null;
          if (isRootTokenIdentifier) {
            segments[index] = AnalysedSegmentStatus.validDeclaration(
              offset: offset,
              segmentText: group.fullMatchText,
            );
          } else {
            final bool dontExistSegmentYet =
                textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                        .containsKey(group.content) ==
                    false;
            if (dontExistSegmentYet) {
              textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                  group.content] = [];
            }

            textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                    group.content]
                ?.add(
              TextParentScopeValidationPayload(
                parentMapper: varScopeParentMapper as TextParentMapper,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
          }

          return;
        } else if (isBoolean) {
          // Now, we need to now if the boolean has a open and close declaration in somewhere in the text.

          final bool dontExistSegmentYet =
              openBooleanDeclarationsWithoutFindedCloseYet
                      .containsKey(group.content) ==
                  false;
          if (dontExistSegmentYet) {
            openBooleanDeclarationsWithoutFindedCloseYet[group.content] = [];
          }

          if (isNormalOpenDelimiter || isInverseOpenDelimiter) {
            openBooleanDeclarationsWithoutFindedCloseYet[group.content]?.add(
              OpenBooleanDeclarationPayload(
                parentMapper: varScopeParentMapper as BooleanParentMapper,
                findedGroup: group,
                indexInSegment: index,
              ),
            );

            return;
          }

          final List<OpenBooleanDeclarationPayload>? openDeclarations =
              openBooleanDeclarationsWithoutFindedCloseYet[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] =
                AnalysedSegmentStatus.booleanDeclarationCloseWithoutOpen(
              offset: offset,
              segmentText: group.fullMatchText,
            );
          } else {
            final OpenBooleanDeclarationPayload openDeclaration =
                openBooleanDeclarationsWithoutFindedCloseYet[group.content]!
                    .removeLast();
            final isRootTokenIdentifier =
                varScopeParentMapper.parrentName == null;
            if (isRootTokenIdentifier) {
              segments[openDeclaration.indexInSegment] =
                  AnalysedSegmentStatus.validDeclaration(
                offset: offset,
                segmentText: openDeclaration.findedGroup.fullMatchText,
              );

              segments[index] = AnalysedSegmentStatus.validDeclaration(
                offset: offset,
                segmentText: group.fullMatchText,
              );
              return;
            }

            final bool dontExistBooleanSegmentYet =
                booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                        .containsKey(group.content) ==
                    false;

            if (dontExistBooleanSegmentYet) {
              booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                  group.content] = [];
            }

            final scope = BooleanParentScopeValidationPayload(
              open: OpenBooleanDeclarationPayload(
                parentMapper: openDeclaration.parentMapper,
                findedGroup: openDeclaration.findedGroup,
                indexInSegment: openDeclaration.indexInSegment,
              ),
              close: OpenBooleanDeclarationPayload(
                parentMapper: varScopeParentMapper as BooleanParentMapper,
                findedGroup: group,
                indexInSegment: index,
              ),
            );

            booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                    group.content]
                ?.add(scope);
          }

          return;
        }

        // Now, we need to now if the model has a open and close declaration in somewhere in the text.
        if (openModelDeclarationsWithoutFindedCloseYet
                .containsKey(group.content) ==
            false) {
          openModelDeclarationsWithoutFindedCloseYet[group.content] = [];
        }

        if (isNormalOpenDelimiter) {
          openModelDeclarationsWithoutFindedCloseYet[group.content]?.add(
            OpenModelDeclarationPayload(
              parentMapper: varScopeParentMapper as ModelParentMapper,
              findedGroup: group,
              indexInSegment: index,
            ),
          );

          return;
        } else {
          final List<OpenModelDeclarationPayload>? openDeclarations =
              openModelDeclarationsWithoutFindedCloseYet[group.content];

          if (openDeclarations == null || openDeclarations.isEmpty) {
            segments[index] =
                AnalysedSegmentStatus.modelDeclarationCloseWithoutOpen(
              offset: offset,
              segmentText: group.fullMatchText,
            );
          }

          final OpenModelDeclarationPayload openDeclaration =
              openModelDeclarationsWithoutFindedCloseYet[group.content]!
                  .removeLast();

          if (varScopeParentMapper.parrentName == null) {
            segments[index] = AnalysedSegmentStatus.validDeclaration(
              offset: offset,
              segmentText: group.fullMatchText,
            );

            segments[openDeclaration.indexInSegment] =
                AnalysedSegmentStatus.validDeclaration(
              offset: TextOffset(
                start: openDeclaration.findedGroup.globalStart,
                end: openDeclaration.findedGroup.globalEnd,
              ),
              segmentText: openDeclaration.findedGroup.fullMatchText,
            );
            handleFindedModelScope(
              tokenIdentifier: varScopeParentMapper,
              startFindedGroup: openDeclaration.findedGroup,
              endFindedGroup: group,
            );
          } else {
            final cluster = ModelParentScopeValidationPayload(
              open: openDeclaration,
              close: OpenModelDeclarationPayload(
                parentMapper: varScopeParentMapper as ModelParentMapper,
                findedGroup: group,
                indexInSegment: index,
              ),
            );
            final int segmentIndex =
                modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                    .indexWhere((element) =>
                        element.isNotEmpty &&
                        element.first.open.findedGroup.content ==
                            group.content);

            final bool dontExistSegmentYet = segmentIndex == -1;

            if (dontExistSegmentYet) {
              modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                  .add([cluster]);
            } else {
              modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                      segmentIndex]
                  .add(cluster);
            }
          }
        }
      },
      onNonMatch: (text) {
        index++;

        /// By default, all text is normal text.
        /// There is no calculation to be done above them.
        segments[index] = AnalysedSegmentStatus.normalText(
          offset: TextOffset(
            start: text.globalStart,
            end: text.globalEnd,
          ),
          segmentText: text.content,
        );
      },
    );

    openModelDeclarationsWithoutFindedCloseYet.forEach((content, declarations) {
      for (final declaration in declarations) {
        segments[declaration.indexInSegment] =
            AnalysedSegmentStatus.modelDeclarationOpenWithoutClose(
          offset: TextOffset(
            start: declaration.findedGroup.globalStart,
            end: declaration.findedGroup.globalEnd,
          ),
          segmentText: declaration.findedGroup.fullMatchText,
        );
      }
    });

    openBooleanDeclarationsWithoutFindedCloseYet.forEach(
      (content, declarations) {
        for (final declaration in declarations) {
          segments[declaration.indexInSegment] =
              AnalysedSegmentStatus.booleanDeclarationOpenWithoutClose(
            offset: TextOffset(
              start: declaration.findedGroup.globalStart,
              end: declaration.findedGroup.globalEnd,
            ),
            segmentText: declaration.findedGroup.fullMatchText,
          );
        }
      },
    );

    // Now, let's check if the model declarations that need
    // to be inside a model scope are valid.
    // To be valid they need to be inside there model scope.
    modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.sort(
      (a, b) {
        if (a.isEmpty && b.isNotEmpty) {
          return 1;
        } else if (a.isNotEmpty && b.isEmpty) {
          return -1;
        } else if (a.isEmpty && b.isEmpty) {
          return 0;
        } else {
          return a.first.open.findedGroup.globalStart
              .compareTo(b.first.open.findedGroup.globalStart);
        }
      },
    );

    for (final List<ModelParentScopeValidationPayload> declarations
        in modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet) {
      for (final ModelParentScopeValidationPayload declaration
          in declarations) {
        final List<ToAnalyseScope>? scopesPattern =
            allModelScopesByMustacheName[
                declaration.open.parentMapper.parrentName];

        final isDeclarationInCorrectScope =
            scopesPattern?.any((ToAnalyseScope analysisModel) {
          return analysisModel.scope.startDeclaration.end <
                  declaration.open.findedGroup.globalStart &&
              declaration.close.findedGroup.globalEnd <
                  analysisModel.scope.endDeclaration.start;
        });

        if (isDeclarationInCorrectScope == true) {
          segments[declaration.open.indexInSegment] =
              AnalysedSegmentStatus.validDeclaration(
            offset: TextOffset(
              start: declaration.open.findedGroup.globalStart,
              end: declaration.open.findedGroup.globalEnd,
            ),
            segmentText: declaration.open.findedGroup.fullMatchText,
          );

          segments[declaration.close.indexInSegment] =
              AnalysedSegmentStatus.validDeclaration(
            offset: TextOffset(
              start: declaration.close.findedGroup.globalStart,
              end: declaration.close.findedGroup.globalEnd,
            ),
            segmentText: declaration.close.findedGroup.fullMatchText,
          );

          handleFindedModelScope(
            tokenIdentifier: declaration.open.parentMapper,
            startFindedGroup: declaration.open.findedGroup,
            endFindedGroup: declaration.close.findedGroup,
          );
        } else {
          segments[declaration.open.indexInSegment] =
              AnalysedSegmentStatus.variableExistsButCannotBeUsedInThisContext(
            offset: TextOffset(
              start: declaration.open.findedGroup.globalStart,
              end: declaration.open.findedGroup.globalEnd,
            ),
            segmentText: declaration.open.findedGroup.fullMatchText,
          );

          segments[declaration.close.indexInSegment] =
              AnalysedSegmentStatus.variableExistsButCannotBeUsedInThisContext(
            offset: TextOffset(
              start: declaration.close.findedGroup.globalStart,
              end: declaration.close.findedGroup.globalEnd,
            ),
            segmentText: declaration.close.findedGroup.fullMatchText,
          );
        }
      }
    }

    // Now, let's check if the text declarations that need
    // to be inside a model scope are valid.
    // To be valid they need to be inside there model scope.
    textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.forEach(
      (_, List<TextParentScopeValidationPayload> declarations) {
        // Let's check each text declaration
        for (final TextParentScopeValidationPayload declaration
            in declarations) {
          // Get the analyse scope of the parrent of the text declaration.
          // That is: The model scope the text is inside.
          final List<ToAnalyseScope>? scopesPattern =
              allModelScopesByMustacheName[
                  declaration.parentMapper.parrentName];

          final isDeclarationInCorrectScope =
              scopesPattern?.any((ToAnalyseScope analysisModel) {
            return analysisModel.scope.startDeclaration.end <
                    declaration.findedGroup.globalStart &&
                declaration.findedGroup.globalEnd <
                    analysisModel.scope.endDeclaration.start;
          });

          if (isDeclarationInCorrectScope == true) {
            segments[declaration.indexInSegment] =
                AnalysedSegmentStatus.validDeclaration(
              offset: TextOffset(
                start: declaration.findedGroup.globalStart,
                end: declaration.findedGroup.globalEnd,
              ),
              segmentText: declaration.findedGroup.fullMatchText,
            );
          } else {
            segments[declaration.indexInSegment] = AnalysedSegmentStatus
                .variableExistsButCannotBeUsedInThisContext(
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
    booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.forEach(
      (_, List<BooleanParentScopeValidationPayload> declarations) {
        for (final BooleanParentScopeValidationPayload declaration
            in declarations) {
          final List<ToAnalyseScope>? scopesPattern =
              allModelScopesByMustacheName[
                  declaration.open.parentMapper.parrentName];

          final isDeclarationInCorrectScope =
              scopesPattern?.any((ToAnalyseScope analysisModel) {
            return analysisModel.scope.startDeclaration.end <
                    declaration.open.findedGroup.globalStart &&
                declaration.close.findedGroup.globalEnd <
                    analysisModel.scope.endDeclaration.start;
          });

          if (isDeclarationInCorrectScope == true) {
            segments[declaration.open.indexInSegment] =
                AnalysedSegmentStatus.validDeclaration(
              offset: TextOffset(
                start: declaration.open.findedGroup.globalStart,
                end: declaration.open.findedGroup.globalEnd,
              ),
              segmentText: declaration.open.findedGroup.fullMatchText,
            );

            segments[declaration.close.indexInSegment] =
                AnalysedSegmentStatus.validDeclaration(
              offset: TextOffset(
                start: declaration.close.findedGroup.globalStart,
                end: declaration.close.findedGroup.globalEnd,
              ),
              segmentText: declaration.close.findedGroup.fullMatchText,
            );
          } else {
            segments[declaration.open.indexInSegment] = AnalysedSegmentStatus
                .variableExistsButCannotBeUsedInThisContext(
              offset: TextOffset(
                start: declaration.open.findedGroup.globalStart,
                end: declaration.open.findedGroup.globalEnd,
              ),
              segmentText: declaration.open.findedGroup.fullMatchText,
            );

            segments[declaration.close.indexInSegment] = AnalysedSegmentStatus
                .variableExistsButCannotBeUsedInThisContext(
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

    for (final ModelParentMapper identifier
        in modelsThatCursorIndexIsInsideScope) {
      usableVariablesInCurrentContext
          .add(ChoosableVariableImplementations.model(
        variableName: identifier.name,
      ));

      for (final subModelName in identifier.subModelsNames) {
        final isSubModelAlreadyDefined =
            usableVariablesInCurrentContext.any((element) {
          return element.maybeMap(
            model: (value) {
              return value.variableName == subModelName;
            },
            orElse: () => false,
          );
        });
        if (isSubModelAlreadyDefined) {
          continue;
        }

        final VariableScopeParentMapper? tokenIdentifier =
            flatMap[subModelName];
        if (tokenIdentifier == null || tokenIdentifier is! ModelParentMapper) {
          continue;
        }

        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.model(
          variableName: tokenIdentifier.name,
        ));
      }

      for (final booleanName in identifier.booleanNames) {
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.boolean(
          variableName: booleanName,
          booleanImplementation: BooleanUseImplementation.normalValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.boolean(
          variableName: booleanName,
          booleanImplementation: BooleanUseImplementation.invertedValue(),
        ));
      }

      for (final textName in identifier.textsNames) {
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.text(
          variableName: textName,
        ));
      }
    }

    final sortedSegmentsEntries = segments
        .castToList((key, value) => MapEntry(key, value))
      ..sort((a, b) => a.key.compareTo(b.key));

    final List<AnalysedSegmentStatus> sortedSegments =
        sortedSegmentsEntries.map((e) => e.value).toList();

    return AnalysedResponse(
      segmentsStates: sortedSegments,
      choosableVariablesInCurrentScope: usableVariablesInCurrentContext,
    );
  }
}

class ModelParentScopeValidationPayload {
  final OpenModelDeclarationPayload open;
  final OpenModelDeclarationPayload close;
  const ModelParentScopeValidationPayload({
    required this.open,
    required this.close,
  });
}

class OpenModelDeclarationPayload {
  final ModelParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const OpenModelDeclarationPayload({
    required this.parentMapper,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class OpenBooleanDeclarationPayload {
  final BooleanParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const OpenBooleanDeclarationPayload({
    required this.parentMapper,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

// class OpenChoiceDeclarationPayload {
//   final ChoiceParentMapper parentMapper;
//   final FindedGroup findedGroup;
//   final int indexInSegment;
//   const OpenChoiceDeclarationPayload({
//     required this.parentMapper,
//     required this.findedGroup,
//     required this.indexInSegment,
//   });
// }

class BooleanParentScopeValidationPayload {
  final OpenBooleanDeclarationPayload open;
  final OpenBooleanDeclarationPayload close;
  const BooleanParentScopeValidationPayload({
    required this.open,
    required this.close,
  });
}

// class ChoiceParentScopeValidationPayload {
//   final OpenChoiceDeclarationPayload open;
//   final OpenChoiceDeclarationPayload close;
//   const ChoiceParentScopeValidationPayload({
//     required this.open,
//     required this.close,
//   });
// }

class TextParentScopeValidationPayload {
  final TextParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const TextParentScopeValidationPayload({
    required this.parentMapper,
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
