part of '../all_variables.dart';

mixin TextAnalyserInputVariables {
  /// The input text, that is: the text that
  /// the user had typed and will be analysed
  late String input;

  /// The current cursor index
  late int indexAtText;

  /// The flat map of the variables parents
  /// to have a quick access to the variables
  /// in the text and to know what are the parents
  /// of them so we can know its need or noot to be
  /// in a scope to be used.
  late Map<String, VariableScopeParentMapper> flatMap;
}
