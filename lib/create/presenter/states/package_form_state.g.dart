// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_form_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageFormStateNormalImpl _$$PackageFormStateNormalImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageFormStateNormalImpl(
      formData:
          PackageFormData.fromJson(json['formData'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PackageFormStateNormalImplToJson(
        _$PackageFormStateNormalImpl instance) =>
    <String, dynamic>{
      'formData': instance.formData.toJson(),
      'runtimeType': instance.$type,
    };

_$PackageFormStateLoadingImpl _$$PackageFormStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageFormStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PackageFormStateLoadingImplToJson(
        _$PackageFormStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
