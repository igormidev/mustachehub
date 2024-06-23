import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable_option.freezed.dart';

@freezed
abstract class VariableOption with _$VariableOption {
  const factory VariableOption.openBoolean() = _VariableOption;
}
