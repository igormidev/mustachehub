import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:text_analyser/src/models/token_identifier.dart';

part 'variable_implementation.freezed.dart';
part 'variable_implementation.g.dart';

@freezed
abstract class VariableImplementation with _$VariableImplementation {
  factory VariableImplementation.boolean({
    required BooleanTokenIdentifier booleanTokenIdentifier,
    required BooleanImplementation booleanImplementation,
  }) = VariableImplementationBoolean;

  factory VariableImplementation.text({
    required TextTokenIdentifier textTokenIdentifier,
  }) = VariableImplementationText;

  factory VariableImplementation.choice({
    required ChoiceTokenIdentifier choiceTokenIdentifier,
    required ChoiceImplementation choiceImplementation,
  }) = VariableImplementationChoice;

  factory VariableImplementation.model({
    required ModelTokenIdentifier modelTokenIdentifier,
  }) = VariableImplementationModel;

  factory VariableImplementation.fromJson(Map<String, dynamic> json) =>
      _$VariableImplementationFromJson(json);
}

@freezed
abstract class BooleanImplementation with _$BooleanImplementation {
  factory BooleanImplementation.invertedValue() =
      _BooleanImplementationInvertedValue;
  factory BooleanImplementation.normalValue() =
      _BooleanImplementationNormalValue;

  factory BooleanImplementation.fromJson(Map<String, dynamic> json) =>
      _$BooleanImplementationFromJson(json);
}

@freezed
abstract class ChoiceImplementation with _$ChoiceImplementation {
  factory ChoiceImplementation.normalValue() = _ChoiceImplementationNormalValue;
  factory ChoiceImplementation.invertedValue() =
      _ChoiceImplementationInvertedValue;

  factory ChoiceImplementation.fromJson(Map<String, dynamic> json) =>
      _$ChoiceImplementationFromJson(json);
}
