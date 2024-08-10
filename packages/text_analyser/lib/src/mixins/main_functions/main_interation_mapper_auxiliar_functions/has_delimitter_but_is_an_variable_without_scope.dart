import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/main_interation_variables.dart';
import 'package:text_analyser/text_analyser.dart';

mixin HasDelimitterButIsAnVariableWithoutScope on MainInterationVariables {
  /// Returns true if the variable has a delimitter but is an variable without scope.
  ///
  /// For example, text variable. If an text variable has a delimitter
  /// (open or close delimitter, # or ^) it is not a valid variable.
  /// Because text variable does not have an delimitter.
  bool handleVariableThatHasDelimitterButIsAnVariableWihoutScope() {
    if (hasDelimiter && isModel == false && isBoolean == false) {
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
