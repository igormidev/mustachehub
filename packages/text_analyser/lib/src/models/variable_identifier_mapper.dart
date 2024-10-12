import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable_identifier_mapper.freezed.dart';
part 'variable_identifier_mapper.g.dart';

@freezed
abstract class VariableIdentifierMapper with _$VariableIdentifierMapper {
  factory VariableIdentifierMapper.text({
    required String? parrentName,
    required String name,
  }) = VariableIdentifierMapperText;

  factory VariableIdentifierMapper.boolean({
    required String? parrentName,
    required String name,
  }) = VariableIdentifierMapperBoolean;

  factory VariableIdentifierMapper.choice({
    required String? parrentName,
    required String name,
    required List<String> options,
  }) = VariableIdentifierMapperChoice;

  factory VariableIdentifierMapper.model({
    required String? parrentName,
    required String name,
    required List<VariableIdentifierMapperText> textsChildren,
    required List<VariableIdentifierMapperBoolean> booleansChildren,
    required List<VariableIdentifierMapperChoice> choicesChildren,
    required List<VariableIdentifierMapperModel> subModelsChildren,
  }) = VariableIdentifierMapperModel;

  factory VariableIdentifierMapper.fromJson(Map<String, dynamic> json) =>
      _$VariableIdentifierMapperFromJson(json);
}
