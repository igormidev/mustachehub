// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template_metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateMetadataImpl _$$TemplateMetadataImplFromJson(
        Map<String, dynamic> json) =>
    _$TemplateMetadataImpl(
      isPrivate: json['isPrivate'] as bool,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      usersPermission: Map<String, String>.from(json['usersPermission'] as Map),
    );

Map<String, dynamic> _$$TemplateMetadataImplToJson(
        _$TemplateMetadataImpl instance) =>
    <String, dynamic>{
      'isPrivate': instance.isPrivate,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'usersPermission': instance.usersPermission,
    };
