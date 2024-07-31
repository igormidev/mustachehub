// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_output.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentOutputImpl _$$ContentOutputImplFromJson(Map<String, dynamic> json) =>
    _$ContentOutputImpl(
      texts:
          (json['texts'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [''],
    );

Map<String, dynamic> _$$ContentOutputImplToJson(_$ContentOutputImpl instance) =>
    <String, dynamic>{
      'texts': instance.texts,
    };
