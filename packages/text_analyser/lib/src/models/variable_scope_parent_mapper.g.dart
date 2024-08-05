// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'variable_scope_parent_mapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TextTokenIdentifierImpl _$$TextTokenIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$TextTokenIdentifierImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TextTokenIdentifierImplToJson(
        _$TextTokenIdentifierImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$BooleanTokenIdentifierImpl _$$BooleanTokenIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$BooleanTokenIdentifierImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BooleanTokenIdentifierImplToJson(
        _$BooleanTokenIdentifierImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$ChoiceTokenIdentifierImpl _$$ChoiceTokenIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$ChoiceTokenIdentifierImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ChoiceTokenIdentifierImplToJson(
        _$ChoiceTokenIdentifierImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'runtimeType': instance.$type,
    };

_$ModelTokenIdentifierImpl _$$ModelTokenIdentifierImplFromJson(
        Map<String, dynamic> json) =>
    _$ModelTokenIdentifierImpl(
      parrentName: json['parrentName'] as String?,
      name: json['name'] as String,
      textsNames: (json['textsNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      booleanNames: (json['booleanNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      subModelsNames: (json['subModelsNames'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ModelTokenIdentifierImplToJson(
        _$ModelTokenIdentifierImpl instance) =>
    <String, dynamic>{
      'parrentName': instance.parrentName,
      'name': instance.name,
      'textsNames': instance.textsNames,
      'booleanNames': instance.booleanNames,
      'subModelsNames': instance.subModelsNames,
      'runtimeType': instance.$type,
    };
