part of '../../all_variables.dart';

mixin SetOpenBooleansWithotCloseAsInvalidSegments on MainInterationVariables {
  void setOpenBooleansWithNoCloseAsInvalidSegments() {
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
  }
}
