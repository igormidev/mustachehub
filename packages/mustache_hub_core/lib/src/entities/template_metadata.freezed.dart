// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TemplateMetadata _$TemplateMetadataFromJson(Map<String, dynamic> json) {
  return _TemplateMetadata.fromJson(json);
}

/// @nodoc
mixin _$TemplateMetadata {
  bool get isPrivate => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Map<String, String> get usersPermission => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateMetadataCopyWith<TemplateMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateMetadataCopyWith<$Res> {
  factory $TemplateMetadataCopyWith(
          TemplateMetadata value, $Res Function(TemplateMetadata) then) =
      _$TemplateMetadataCopyWithImpl<$Res, TemplateMetadata>;
  @useResult
  $Res call(
      {bool isPrivate,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, String> usersPermission});
}

/// @nodoc
class _$TemplateMetadataCopyWithImpl<$Res, $Val extends TemplateMetadata>
    implements $TemplateMetadataCopyWith<$Res> {
  _$TemplateMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPrivate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? usersPermission = null,
  }) {
    return _then(_value.copyWith(
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersPermission: null == usersPermission
          ? _value.usersPermission
          : usersPermission // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemplateMetadataImplCopyWith<$Res>
    implements $TemplateMetadataCopyWith<$Res> {
  factory _$$TemplateMetadataImplCopyWith(_$TemplateMetadataImpl value,
          $Res Function(_$TemplateMetadataImpl) then) =
      __$$TemplateMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPrivate,
      DateTime createdAt,
      DateTime updatedAt,
      Map<String, String> usersPermission});
}

/// @nodoc
class __$$TemplateMetadataImplCopyWithImpl<$Res>
    extends _$TemplateMetadataCopyWithImpl<$Res, _$TemplateMetadataImpl>
    implements _$$TemplateMetadataImplCopyWith<$Res> {
  __$$TemplateMetadataImplCopyWithImpl(_$TemplateMetadataImpl _value,
      $Res Function(_$TemplateMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPrivate = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? usersPermission = null,
  }) {
    return _then(_$TemplateMetadataImpl(
      isPrivate: null == isPrivate
          ? _value.isPrivate
          : isPrivate // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usersPermission: null == usersPermission
          ? _value._usersPermission
          : usersPermission // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemplateMetadataImpl implements _TemplateMetadata {
  _$TemplateMetadataImpl(
      {required this.isPrivate,
      required this.createdAt,
      required this.updatedAt,
      required final Map<String, String> usersPermission})
      : _usersPermission = usersPermission;

  factory _$TemplateMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateMetadataImplFromJson(json);

  @override
  final bool isPrivate;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  final Map<String, String> _usersPermission;
  @override
  Map<String, String> get usersPermission {
    if (_usersPermission is EqualUnmodifiableMapView) return _usersPermission;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_usersPermission);
  }

  @override
  String toString() {
    return 'TemplateMetadata(isPrivate: $isPrivate, createdAt: $createdAt, updatedAt: $updatedAt, usersPermission: $usersPermission)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateMetadataImpl &&
            (identical(other.isPrivate, isPrivate) ||
                other.isPrivate == isPrivate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality()
                .equals(other._usersPermission, _usersPermission));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isPrivate, createdAt, updatedAt,
      const DeepCollectionEquality().hash(_usersPermission));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateMetadataImplCopyWith<_$TemplateMetadataImpl> get copyWith =>
      __$$TemplateMetadataImplCopyWithImpl<_$TemplateMetadataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateMetadataImplToJson(
      this,
    );
  }
}

abstract class _TemplateMetadata implements TemplateMetadata {
  factory _TemplateMetadata(
          {required final bool isPrivate,
          required final DateTime createdAt,
          required final DateTime updatedAt,
          required final Map<String, String> usersPermission}) =
      _$TemplateMetadataImpl;

  factory _TemplateMetadata.fromJson(Map<String, dynamic> json) =
      _$TemplateMetadataImpl.fromJson;

  @override
  bool get isPrivate;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Map<String, String> get usersPermission;
  @override
  @JsonKey(ignore: true)
  _$$TemplateMetadataImplCopyWith<_$TemplateMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
