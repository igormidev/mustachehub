// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageInfo _$PackageInfoFromJson(Map<String, dynamic> json) {
  return _PackageInfo.fromJson(json);
}

/// @nodoc
mixin _$PackageInfo {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this PackageInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PackageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PackageInfoCopyWith<PackageInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInfoCopyWith<$Res> {
  factory $PackageInfoCopyWith(
          PackageInfo value, $Res Function(PackageInfo) then) =
      _$PackageInfoCopyWithImpl<$Res, PackageInfo>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class _$PackageInfoCopyWithImpl<$Res, $Val extends PackageInfo>
    implements $PackageInfoCopyWith<$Res> {
  _$PackageInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PackageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageInfoImplCopyWith<$Res>
    implements $PackageInfoCopyWith<$Res> {
  factory _$$PackageInfoImplCopyWith(
          _$PackageInfoImpl value, $Res Function(_$PackageInfoImpl) then) =
      __$$PackageInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$PackageInfoImplCopyWithImpl<$Res>
    extends _$PackageInfoCopyWithImpl<$Res, _$PackageInfoImpl>
    implements _$$PackageInfoImplCopyWith<$Res> {
  __$$PackageInfoImplCopyWithImpl(
      _$PackageInfoImpl _value, $Res Function(_$PackageInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PackageInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$PackageInfoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageInfoImpl implements _PackageInfo {
  _$PackageInfoImpl({required this.name, required this.description});

  factory _$PackageInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageInfoImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @override
  String toString() {
    return 'PackageInfo(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  /// Create a copy of PackageInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageInfoImplCopyWith<_$PackageInfoImpl> get copyWith =>
      __$$PackageInfoImplCopyWithImpl<_$PackageInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageInfoImplToJson(
      this,
    );
  }
}

abstract class _PackageInfo implements PackageInfo {
  factory _PackageInfo(
      {required final String name,
      required final String description}) = _$PackageInfoImpl;

  factory _PackageInfo.fromJson(Map<String, dynamic> json) =
      _$PackageInfoImpl.fromJson;

  @override
  String get name;
  @override
  String get description;

  /// Create a copy of PackageInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PackageInfoImplCopyWith<_$PackageInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
