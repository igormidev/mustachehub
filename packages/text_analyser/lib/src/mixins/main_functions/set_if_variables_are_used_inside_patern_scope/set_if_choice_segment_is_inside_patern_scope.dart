part of '../../all_variables.dart';

mixin SetIfChoiceSegmentIsInsidePaternScope on AllVariables {
  void setIfChoiceSegmentIsInsidePaternScope() {
    // Now, let's check if the choice declarations that need
    // to be inside a model scope are valid.
    // To be valid they need to be inside there model scope.
    choicesWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.forEach(
      (_, List<ChoiceParentScopeValidationPayload> declarations) {
        for (final ChoiceParentScopeValidationPayload declaration
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
  }
}
