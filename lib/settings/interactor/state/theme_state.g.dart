// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NormalImpl _$$NormalImplFromJson(Map<String, dynamic> json) => _$NormalImpl(
      colorValue: json['colorValue'] as int,
      brightness: $enumDecode(_$BrightnessEnumMap, json['brightness']),
    );

Map<String, dynamic> _$$NormalImplToJson(_$NormalImpl instance) =>
    <String, dynamic>{
      'colorValue': instance.colorValue,
      'brightness': _$BrightnessEnumMap[instance.brightness]!,
    };

const _$BrightnessEnumMap = {
  Brightness.dark: 'dark',
  Brightness.light: 'light',
};
