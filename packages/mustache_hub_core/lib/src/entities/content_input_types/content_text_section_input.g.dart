// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_text_section_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContentTextSectionInputImpl _$$ContentTextSectionInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ContentTextSectionInputImpl(
      uuid: json['uuid'] as String,
      content: json['content'] as String? ?? '',
      title: json['title'] as String? ?? '',
      willBreakLine: json['willBreakLine'] as bool? ?? true,
    );

Map<String, dynamic> _$$ContentTextSectionInputImplToJson(
        _$ContentTextSectionInputImpl instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'content': instance.content,
      'title': instance.title,
      'willBreakLine': instance.willBreakLine,
    };
