part of '../../all_variables.dart';

mixin SetOpenModelsWithNoCloseAsInvalidSegments on MainInterationVariables {
  void setOpenModelsWithNoCloseAsInvalidSegments() {
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
  }
}
