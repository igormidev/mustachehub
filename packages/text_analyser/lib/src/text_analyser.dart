import 'package:text_analyser/src/mixins/all_variables.dart';
import 'package:text_analyser/src/models/analysed_response.dart';
import 'package:text_analyser/text_analyser.dart';

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
        HandleModelVariables,
        IsUncatologedVariable,
        HasDelimitterButIsAnVariableWithoutScope,
        MainInterationVariables,
        HandleFindedModelScope,
        SetOpenModelsWithNoCloseAsInvalidSegments,
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

    setIfTextSegmentIsInsidePaternScope();

    mapAllSegmentsAndVariables();

    setOpenModelsWithNoCloseAsInvalidSegments();
    setOpenBooleansWithNoCloseAsInvalidSegments();

    setIfTextSegmentIsInsidePaternScope();
    setIfBooleansSegmentAreInsidePaternScope();
    setIfModelSegmentAreInsidePaternScope();

    setVariablesThatCanBeUsedInCursorIndex();

    garanteeAllSegmentsAreCorrectlySorted();

    return AnalysedResponse(
      segmentsStates: sortedSegments,
      choosableVariablesInCurrentScope: usableVariablesInCurrentContext,
    );
  }
}
