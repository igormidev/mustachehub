import 'package:freezed_annotation/freezed_annotation.dart';

part 'variable_scope_parent_mapper.freezed.dart';
part 'variable_scope_parent_mapper.g.dart';

@freezed
abstract class VariableScopeParentMapper with _$VariableScopeParentMapper {
  const factory VariableScopeParentMapper.text({
    required String? parrentName,
    required String name,
  }) = TextParentMapper;

  const factory VariableScopeParentMapper.boolean({
    required String? parrentName,
    required String name,
  }) = BooleanParentMapper;

  const factory VariableScopeParentMapper.model({
    required String? parrentName,
    required String name,
    required List<String> textsNames,
    required List<String> booleanNames,
    required List<String> subModelsNames,
  }) = ModelParentMapper;

  factory VariableScopeParentMapper.fromJson(Map<String, dynamic> json) =>
      _$VariableScopeParentMapperFromJson(json);
}
