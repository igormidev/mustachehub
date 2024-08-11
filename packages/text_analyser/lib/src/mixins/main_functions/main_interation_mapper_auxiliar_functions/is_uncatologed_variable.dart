part of '../../all_variables.dart';

mixin IsUncatologedVariable on MainInterationVariables {
  /// Returns true if the variable is not in the flat map, it is an uncataloged variable.
  bool handleUncatologedVariable() {
    final contentName = group.content.contains('.')
        ? group.content.split('.').first
        : group.content;

    /// If the variable is not in the flat map, it is an uncataloged variable.
    /// A variable that the user did not create before using it.
    /// Or maybe he just wrote it wrong by one caracter. Anyway, it is not
    /// a valid variable.

    final bool isUncatologedVariable = flatMap[contentName] == null;
    if (isUncatologedVariable) {
      segments[index] = AnalysedSegmentStatus.declarationOfUncatalogedVariable(
        offset: offset,
        segmentText: group.fullMatchText,
      );

      return true;
    }

    return false;
  }
}
