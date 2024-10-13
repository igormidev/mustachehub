part of '../../all_variables.dart';

mixin IsUncatologedVariable on MainInterationVariables {
  /// Returns true if the variable is not in the flat map, it is an uncataloged variable.
  bool handleUncatologedVariable() {
    /// If the variable is not in the flat map, it is an uncataloged variable.
    /// A variable that the user did not create before using it.
    /// Or maybe he just wrote it wrong by one caracter. Anyway, it is not
    /// a valid variable.
    final bool isUncatologedVariable =
        scopeParentFlatMap[group.content] == null;
    if (isUncatologedVariable) {
      print(
          'Uncataloged variable: ${group.content} ( "${scopeParentFlatMap.keys.join('", "')}" )');
      segments[index] = AnalysedSegmentStatus.declarationOfUncatalogedVariable(
        offset: offset,
        segmentText: group.fullMatchText,
      );

      return true;
    }

    return false;
  }
}
