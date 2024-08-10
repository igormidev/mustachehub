part of '../all_variables.dart';

mixin GaranteeAllSegmentsAreCorrectlySorted on AllVariables {
  /// Will sort all segments by the start of the segment
  void garanteeAllSegmentsAreCorrectlySorted() {
    final sortedSegmentsEntries = segments
        .castToList((key, value) => MapEntry(key, value))
      ..sort((a, b) => a.key.compareTo(b.key));

    sortedSegments = sortedSegmentsEntries.map((e) => e.value).toList();
  }
}
