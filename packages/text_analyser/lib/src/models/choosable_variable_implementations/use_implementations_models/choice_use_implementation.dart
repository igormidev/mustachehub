import 'package:freezed_annotation/freezed_annotation.dart';

part 'choice_use_implementation.freezed.dart';
part 'choice_use_implementation.g.dart';

@freezed
abstract class ChoiceUseImplementation with _$ChoiceUseImplementation {
  factory ChoiceUseImplementation.normalValue() =
      _ChoiceUseImplementationNormalValue;
  factory ChoiceUseImplementation.invertedValue() =
      _ChoiceUseImplementationInvertedValue;
  factory ChoiceUseImplementation.textValue() =
      _ChoiceUseImplementationTextValue;

  factory ChoiceUseImplementation.fromJson(Map<String, dynamic> json) =>
      _$ChoiceUseImplementationFromJson(json);
}
