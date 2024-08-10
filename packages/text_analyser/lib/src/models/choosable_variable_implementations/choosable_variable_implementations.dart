import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:text_analyser/src/models/choosable_variable_implementations/use_implementations_models/boolean_use_implementations.dart';
import 'package:text_analyser/src/models/choosable_variable_implementations/use_implementations_models/choice_use_implementation.dart';

part 'choosable_variable_implementations.freezed.dart';
part 'choosable_variable_implementations.g.dart';

@freezed
abstract class ChoosableVariableImplementations
    with _$ChoosableVariableImplementations {
  factory ChoosableVariableImplementations.text({
    required String variableName,
  }) = ChoosableVariableImplementationText;

  factory ChoosableVariableImplementations.choice({
    required String variableName,
    required ChoiceUseImplementation choiceImplementation,
  }) = ChoosableVariableImplementationChoice;

  factory ChoosableVariableImplementations.boolean({
    required String variableName,
    required BooleanUseImplementation booleanImplementation,
  }) = ChoosableVariableImplementationBoolean;

  factory ChoosableVariableImplementations.model({
    required String variableName,
  }) = ChoosableVariableImplementationModel;

  factory ChoosableVariableImplementations.fromJson(
          Map<String, dynamic> json) =>
      _$ChoosableVariableImplementationsFromJson(json);
}