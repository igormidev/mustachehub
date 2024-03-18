// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageInfoState _$PackageInfoStateFromJson(Map<String, dynamic> json) {
  return _PackageInfoState.fromJson(json);
}

/// @nodoc
mixin _$PackageInfoState {
  PackageInfo get packageInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageInfoStateCopyWith<PackageInfoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageInfoStateCopyWith<$Res> {
  factory $PackageInfoStateCopyWith(
          PackageInfoState value, $Res Function(PackageInfoState) then) =
      _$PackageInfoStateCopyWithImpl<$Res, PackageInfoState>;
  @useResult
  $Res call({PackageInfo packageInfo});
}

/// @nodoc
class _$PackageInfoStateCopyWithImpl<$Res, $Val extends PackageInfoState>
    implements $PackageInfoStateCopyWith<$Res> {
  _$PackageInfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageInfo = null,
  }) {
    return _then(_value.copyWith(
      packageInfo: null == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageInfoStateImplCopyWith<$Res>
    implements $PackageInfoStateCopyWith<$Res> {
  factory _$$PackageInfoStateImplCopyWith(_$PackageInfoStateImpl value,
          $Res Function(_$PackageInfoStateImpl) then) =
      __$$PackageInfoStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PackageInfo packageInfo});
}

/// @nodoc
class __$$PackageInfoStateImplCopyWithImpl<$Res>
    extends _$PackageInfoStateCopyWithImpl<$Res, _$PackageInfoStateImpl>
    implements _$$PackageInfoStateImplCopyWith<$Res> {
  __$$PackageInfoStateImplCopyWithImpl(_$PackageInfoStateImpl _value,
      $Res Function(_$PackageInfoStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageInfo = null,
  }) {
    return _then(_$PackageInfoStateImpl(
      packageInfo: null == packageInfo
          ? _value.packageInfo
          : packageInfo // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageInfoStateImpl implements _PackageInfoState {
  _$PackageInfoStateImpl({required this.packageInfo});

  factory _$PackageInfoStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageInfoStateImplFromJson(json);

  @override
  final PackageInfo packageInfo;

  @override
  String toString() {
    return 'PackageInfoState(packageInfo: $packageInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageInfoStateImpl &&
            (identical(other.packageInfo, packageInfo) ||
                other.packageInfo == packageInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, packageInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageInfoStateImplCopyWith<_$PackageInfoStateImpl> get copyWith =>
      __$$PackageInfoStateImplCopyWithImpl<_$PackageInfoStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageInfoStateImplToJson(
      this,
    );
  }
}

abstract class _PackageInfoState implements PackageInfoState {
  factory _PackageInfoState({required final PackageInfo packageInfo}) =
      _$PackageInfoStateImpl;

  factory _PackageInfoState.fromJson(Map<String, dynamic> json) =
      _$PackageInfoStateImpl.fromJson;

  @override
  PackageInfo get packageInfo;
  @override
  @JsonKey(ignore: true)
  _$$PackageInfoStateImplCopyWith<_$PackageInfoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
