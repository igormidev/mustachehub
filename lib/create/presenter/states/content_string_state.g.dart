// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_string_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NormalImpl _$$NormalImplFromJson(Map<String, dynamic> json) => _$NormalImpl(
      currentText: json['currentText'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NormalImplToJson(_$NormalImpl instance) =>
    <String, dynamic>{
      'currentText': instance.currentText,
      'runtimeType': instance.$type,
    };

_$WithTokenImpl _$$WithTokenImplFromJson(Map<String, dynamic> json) =>
    _$WithTokenImpl(
      currentText: json['currentText'] as String,
      tokensInIt: (json['tokensInIt'] as List<dynamic>)
          .map((e) => Token.fromJson(e as String))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$WithTokenImplToJson(_$WithTokenImpl instance) =>
    <String, dynamic>{
      'currentText': instance.currentText,
      'tokensInIt': instance.tokensInIt,
      'runtimeType': instance.$type,
    };
