// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_collections_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCollectionsStateLoadingImpl _$$UserCollectionsStateLoadingImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionsStateLoadingImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionsStateLoadingImplToJson(
        _$UserCollectionsStateLoadingImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$UserCollectionsStateProcessingImpl
    _$$UserCollectionsStateProcessingImplFromJson(Map<String, dynamic> json) =>
        _$UserCollectionsStateProcessingImpl(
          userCollections: UserCollectionRoot.fromJson(
              json['userCollections'] as Map<String, dynamic>),
          $type: json['runtimeType'] as String?,
        );

Map<String, dynamic> _$$UserCollectionsStateProcessingImplToJson(
        _$UserCollectionsStateProcessingImpl instance) =>
    <String, dynamic>{
      'userCollections': instance.userCollections,
      'runtimeType': instance.$type,
    };

_$UserCollectionsStateWithDataImpl _$$UserCollectionsStateWithDataImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionsStateWithDataImpl(
      userCollections: UserCollectionRoot.fromJson(
          json['userCollections'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionsStateWithDataImplToJson(
        _$UserCollectionsStateWithDataImpl instance) =>
    <String, dynamic>{
      'userCollections': instance.userCollections,
      'runtimeType': instance.$type,
    };

_$UserCollectionsStateErrorImpl _$$UserCollectionsStateErrorImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCollectionsStateErrorImpl(
      message: json['message'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserCollectionsStateErrorImplToJson(
        _$UserCollectionsStateErrorImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };
