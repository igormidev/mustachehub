part of '../../all_variables.dart';

mixin SetIfTextSegmentIsInsidePaternScope on AllVariables {
  void setIfTextSegmentIsInsidePaternScope() {
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
  }
}
