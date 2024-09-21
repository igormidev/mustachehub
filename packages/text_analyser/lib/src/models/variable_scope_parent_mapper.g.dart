// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_scope_parent_mapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextParentMapperImpl _$$TextParentMapperImplFromJson(
        Map<String, dynamic> json) =>
    _$TextParentMapperImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextParentMapperImplToJson(
        _$TextParentMapperImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$BooleanParentMapperImpl _$$BooleanParentMapperImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanParentMapperImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanParentMapperImplToJson(
        _$BooleanParentMapperImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$ModelParentMapperImpl _$$ModelParentMapperImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelParentMapperImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      textsNames: (json['textsNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      booleanNames: (json['booleanNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      choicesNames: (json['choicesNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subModelsNames: (json['subModelsNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ModelParentMapperImplToJson(
        _$ModelParentMapperImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'textsNames': instance.textsNames,
      'booleanNames': instance.booleanNames,
      'choicesNames': instance.choicesNames,
      'subModelsNames': instance.subModelsNames,
      'runtimeType': instance.$type,
    };
