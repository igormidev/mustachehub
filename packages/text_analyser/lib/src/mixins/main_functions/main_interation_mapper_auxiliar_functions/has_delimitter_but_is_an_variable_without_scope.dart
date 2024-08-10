part of '../../all_variables.dart';

mixin HasDelimitterButIsAnVariableWithoutScope on MainInterationVariables {
  /// Returns true if the variable has a delimitter but is an variable without scope.
  ///
  /// For example, text variable. If an text variable has a delimitter
  /// (open or close delimitter, # or ^) it is not a valid variable.
  /// Because text variable does not have an delimitter.
  bool handleVariableThatHasDelimitterButIsAnVariableWihoutScope() {
    if (hasDelimiter &&
        isModel == false &&
        isBoolean == false &&
        isChoice == false) {
      segments[index] =
          AnalysedSegmentStatus.hasDelimitterButIsAnVariableWithoutScope(
        offset: offset,
        segmentText: group.fullMatchText,
      );

      return true;
    }

    return false;
  }
}
