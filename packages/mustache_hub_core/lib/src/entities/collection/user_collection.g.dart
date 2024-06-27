// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCollectionFolderImpl _$$UserCollectionFolderImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionFolderImpl(
      name: json['name'] as String,
      description: json['description'] as String,
      uuid: json['uuid'] as String,
      children: (json['children'] as List<dynamic>)
          .map((e) => UserCollection.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionFolderImplToJson(
        _$UserCollectionFolderImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'uuid': instance.uuid,
      'children': instance.children,
      'runtimeType': instance.$type,
    };

_$UserCollectionFileImpl _$$UserCollectionFileImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionFileImpl(
      template: Template.fromJson(json['template'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionFileImplToJson(
        _$UserCollectionFileImpl instance) =>
    <String, dynamic>{
      'template': instance.template,
      'runtimeType': instance.$type,
    };

_$UserCollectionRootImpl _$$UserCollectionRootImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionRootImpl(
      children: (json['children'] as List<dynamic>?)
              ?.map((e) => UserCollection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionRootImplToJson(
        _$UserCollectionRootImpl instance) =>
    <String, dynamic>{
      'children': instance.children,
      'runtimeType': instance.$type,
    };
