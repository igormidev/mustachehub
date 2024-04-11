// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tab_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TabDataDtoWithContentImpl _$$TabDataDtoWithContentImplFromJson(
        Map<String, dynamic> json) =>
    _$TabDataDtoWithContentImpl(
      text: json['text'] as String,
      template: Template.fromJson(json['template'] as Map<String, dynamic>),
      expectedPayloadDto:
          ExpectedPayloadDto.fromJson(json['expectedPayloadDto'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TabDataDtoWithContentImplToJson(
        _$TabDataDtoWithContentImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'template': instance.template,
      'expectedPayloadDto': instance.expectedPayloadDto,
      'runtimeType': instance.$type,
    };

_$TabDataDtoLoadingContentImpl _$$TabDataDtoLoadingContentImplFromJson(
        Map<String, dynamic> json) =>
    _$TabDataDtoLoadingContentImpl(
      templateId: json['templateId'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TabDataDtoLoadingContentImplToJson(
        _$TabDataDtoLoadingContentImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'runtimeType': instance.$type,
    };

_$TabDataDtoWithErrorFetchingContentImpl
    _$$TabDataDtoWithErrorFetchingContentImplFromJson(
            Map<String, dynamic> json) =>
        _$TabDataDtoWithErrorFetchingContentImpl(
          templateId: json['templateId'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$TabDataDtoWithErrorFetchingContentImplToJson(
        _$TabDataDtoWithErrorFetchingContentImpl instance) =>
    <String, dynamic>{
      'templateId': instance.templateId,
      'runtimeType': instance.$type,
    };

_$TabDataDtoNewTabImpl _$$TabDataDtoNewTabImplFromJson(
        Map<String, dynamic> json) =>
    _$TabDataDtoNewTabImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TabDataDtoNewTabImplToJson(
        _$TabDataDtoNewTabImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
