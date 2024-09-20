// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_form_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageFormDataCreatingFromZeroImpl
    _$$PackageFormDataCreatingFromZeroImplFromJson(Map<String, dynamic> json) =>
        _$PackageFormDataCreatingFromZeroImpl(
          title: json['title'] as String,
          description: json['description'] as String,
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PackageFormDataCreatingFromZeroImplToJson(
        _$PackageFormDataCreatingFromZeroImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'runtimeType': instance.$type,
    };

_$PackageFormDataEditingMyPackageImpl
    _$$PackageFormDataEditingMyPackageImplFromJson(Map<String, dynamic> json) =>
        _$PackageFormDataEditingMyPackageImpl(
          title: json['title'] as String,
          description: json['description'] as String,
          previousInfoPackage: PackageInfo.fromJson(
              json['previousInfoPackage'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$PackageFormDataEditingMyPackageImplToJson(
        _$PackageFormDataEditingMyPackageImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'previousInfoPackage': instance.previousInfoPackage.toJson(),
      'runtimeType': instance.$type,
    };
