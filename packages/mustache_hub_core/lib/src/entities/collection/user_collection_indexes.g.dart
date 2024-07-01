// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_collection_indexes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCollectionIndexesFolderImpl _$$UserCollectionIndexesFolderImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionIndexesFolderImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => UserCollectionIndexes.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionIndexesFolderImplToJson(
        _$UserCollectionIndexesFolderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'children': instance.children.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };

_$UserCollectionIndexesFileImpl _$$UserCollectionIndexesFileImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionIndexesFileImpl(
      templateUuid: json['templateUuid'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionIndexesFileImplToJson(
        _$UserCollectionIndexesFileImpl instance) =>
    <String, dynamic>{
      'templateUuid': instance.templateUuid,
      'runtimeType': instance.$type,
    };

_$UserCollectionIndexesRootImpl _$$UserCollectionIndexesRootImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionIndexesRootImpl(
      children: (json['children'] as List<dynamic>)
          .map((e) => UserCollectionIndexes.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionIndexesRootImplToJson(
        _$UserCollectionIndexesRootImpl instance) =>
    <String, dynamic>{
      'children': instance.children.map((e) => e.toJson()).toList(),
      'runtimeType': instance.$type,
    };
