part of '../../../all_variables.dart';

mixin HandleOnNonMatch on MainInterationVariables {
  void handleOnNonMatch(NonMapContent text) {
    index++;

    /// By default, all text is normal text.
    /// There is no calculation to be done above them
    segments[index] = AnalysedSegmentStatus.normalText(
      offset: TextOffset(
        start: text.globalStart,
        end: text.globalEnd,
      ),
      segmentText: text.content,
    );
  }
}
