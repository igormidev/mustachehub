part of '../../all_variables.dart';

mixin SetIfModelSegmentIsInsidePaternScope
    on AllVariables, HandleFindedModelScope {
  void setIfModelSegmentAreInsidePaternScope() {
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
  }
}
