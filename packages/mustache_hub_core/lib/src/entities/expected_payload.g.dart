// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expected_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ExpectedPayloadImpl _$$ExpectedPayloadImplFromJson(
        Map<String, dynamic> json) =>
    _$ExpectedPayloadImpl(
      textPipes: (json['textPipes'] as List<dynamic>)
          .map((e) => TextPipe.fromJson(e as String))
          .toList(),
      booleanPipes: (json['booleanPipes'] as List<dynamic>)
          .map((e) => BooleanPipe.fromJson(e as String))
          .toList(),
      modelPipes: (json['modelPipes'] as List<dynamic>)
          .map((e) => ModelPipe.fromJson(e as String))
          .toList(),
    );

Map<String, dynamic> _$$ExpectedPayloadImplToJson(
        _$ExpectedPayloadImpl instance) =>
    <String, dynamic>{
      'textPipes': instance.textPipes.map((e) => e.toJson()).toList(),
      'booleanPipes': instance.booleanPipes.map((e) => e.toJson()).toList(),
      'modelPipes': instance.modelPipes.map((e) => e.toJson()).toList(),
    };
