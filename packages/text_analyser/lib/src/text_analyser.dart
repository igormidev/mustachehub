import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:text_analyser/src/mixins/all_variables.dart';
import 'package:text_analyser/src/models/analysed_response.dart';
import 'package:text_analyser/text_analyser.dart';

typedef StructureFolder = StructuredDataType<FoldableSelection, FileSelection>;

class TextAnalyser
    with
        TextAnalyserInputVariables,
        ParentScopeValidationPayload,
        OpenDeclarationsWithoutFindedClose,
        AllVariables, // <--- The main mixin
        SetRootVariables,
        SetVariablesThatCanBeUsedInCursorIndex,
        MainInterationVariables,
        IsWithinTextBounds,
        ResetAllDependencies,
        HandleFindedModelScope,
        GaranteeAllSegmentsAreCorrectlySorted,
        HandleOnNonMatch,
        HandleTextVariables,
        HandleBooleanVariables,
        HandleChoiceVariables,
        HandleModelVariables,
        IsUncatologedVariable,
        HasDelimitterButIsAnVariableWithoutScope,
        MainInterationVariables,
        HandleFindedModelScope,
        SetOpenModelsWithNoCloseAsInvalidSegments,
        SetOpenChoicesWithNoCloseAsInvalidSegments,
        SetOpenBooleansWithotCloseAsInvalidSegments,
        MainInterationMapper,
        SetIfTextSegmentIsInsidePaternScope,
        SetIfBooleanSegmentIsInsidePaternScope,
        SetIfModelSegmentIsInsidePaternScope {
  AnalysedResponse? getMatchClusters({
    required String input,
    required int indexAtText,
    required Map<String, VariableScopeParentMapper> flatMap,
  }) {
    resetAllDependencies();

    this.input = input;
    this.indexAtText = indexAtText;
    this.flatMap = flatMap;
    if (isWithinBounds() == false) return null;

    setAllRootVariablesAsUsableInCurrentContext();

    mapAllSegmentsAndVariables();

    setOpenModelsWithNoCloseAsInvalidSegments();
    setOpenBooleansWithNoCloseAsInvalidSegments();
    setOpenChoicesWithNoCloseAsInvalidSegments();

    setIfModelSegmentAreInsidePaternScope();
    setIfTextSegmentIsInsidePaternScope();
    setIfBooleansSegmentAreInsidePaternScope();

    setVariablesThatCanBeUsedInCursorIndex();

    garanteeAllSegmentsAreCorrectlySorted();

    return AnalysedResponse(
      segmentsStates: sortedSegments,
      choosableVariablesInCurrentScope: usableVariablesInCurrentContext,
    );
  }
}
