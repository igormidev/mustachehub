// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TemplateImpl _$$TemplateImplFromJson(Map<String, dynamic> json) =>
    _$TemplateImpl(
      id: json['id'] as String,
      info: PackageInfo.fromJson(json['info'] as Map<String, dynamic>),
      output: ContentOutput.fromJson(json['output'] as Map<String, dynamic>),
      metadata:
          TemplateMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      payload:
          ExpectedPayload.fromJson(json['payload'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TemplateImplToJson(_$TemplateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'info': instance.info.toJson(),
      'output': instance.output.toJson(),
      'metadata': instance.metadata.toJson(),
      'payload': instance.payload.toJson(),
    };
