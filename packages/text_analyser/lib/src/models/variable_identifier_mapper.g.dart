// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_identifier_mapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VariableIdentifierMapperTextImpl _$$VariableIdentifierMapperTextImplFromJson(
        Map<String, dynamic> json) =>
    _$VariableIdentifierMapperTextImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$VariableIdentifierMapperTextImplToJson(
        _$VariableIdentifierMapperTextImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$VariableIdentifierMapperBooleanImpl
    _$$VariableIdentifierMapperBooleanImplFromJson(Map<String, dynamic> json) =>
        _$VariableIdentifierMapperBooleanImpl(
          parrentName: json['parrentName'] as String?,
          name: json['name'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$VariableIdentifierMapperBooleanImplToJson(
        _$VariableIdentifierMapperBooleanImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$VariableIdentifierMapperChoiceImpl
    _$$VariableIdentifierMapperChoiceImplFromJson(Map<String, dynamic> json) =>
        _$VariableIdentifierMapperChoiceImpl(
          parrentName: json['parrentName'] as String?,
          name: json['name'] as String,
          options: (json['options'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$VariableIdentifierMapperChoiceImplToJson(
        _$VariableIdentifierMapperChoiceImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'options': instance.options,
      'runtimeType': instance.$type,
    };

_$VariableIdentifierMapperModelImpl
    _$$VariableIdentifierMapperModelImplFromJson(Map<String, dynamic> json) =>
        _$VariableIdentifierMapperModelImpl(
          parrentName: json['parrentName'] as String?,
          name: json['name'] as String,
          textsChildren: (json['textsChildren'] as List<dynamic>)
              .map((e) => VariableIdentifierMapperText.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          booleansChildren: (json['booleansChildren'] as List<dynamic>)
              .map((e) => VariableIdentifierMapperBoolean.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          choicesChildren: (json['choicesChildren'] as List<dynamic>)
              .map((e) => VariableIdentifierMapperChoice.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          subModelsChildren: (json['subModelsChildren'] as List<dynamic>)
              .map((e) => VariableIdentifierMapperModel.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$VariableIdentifierMapperModelImplToJson(
        _$VariableIdentifierMapperModelImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'textsChildren': instance.textsChildren,
      'booleansChildren': instance.booleansChildren,
      'choicesChildren': instance.choicesChildren,
      'subModelsChildren': instance.subModelsChildren,
      'runtimeType': instance.$type,
    };
