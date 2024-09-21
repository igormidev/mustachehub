// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentInputImpl _$$ContentInputImplFromJson(Map<String, dynamic> json) =>
    _$ContentInputImpl(
      texts: (json['texts'] as List<dynamic>)
          .map((e) =>
              ContentTextSectionInput.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContentInputImplToJson(_$ContentInputImpl instance) =>
    <String, dynamic>{
      'texts': instance.texts.map((e) => e.toJson()).toList(),
    };
