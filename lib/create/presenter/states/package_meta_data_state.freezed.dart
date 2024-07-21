// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_meta_data_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PackageMetaDataState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String packageId) loadingPackageId,
    required TResult Function(String packageId) withData,
    required TResult Function() newPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String packageId)? loadingPackageId,
    TResult? Function(String packageId)? withData,
    TResult? Function()? newPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String packageId)? loadingPackageId,
    TResult Function(String packageId)? withData,
    TResult Function()? newPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPackageId value) loadingPackageId,
    required TResult Function(_WithData value) withData,
    required TResult Function(_NewPackage value) newPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPackageId value)? loadingPackageId,
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NewPackage value)? newPackage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPackageId value)? loadingPackageId,
    TResult Function(_WithData value)? withData,
    TResult Function(_NewPackage value)? newPackage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageMetaDataStateCopyWith<$Res> {
  factory $PackageMetaDataStateCopyWith(PackageMetaDataState value,
          $Res Function(PackageMetaDataState) then) =
      _$PackageMetaDataStateCopyWithImpl<$Res, PackageMetaDataState>;
}

/// @nodoc
class _$PackageMetaDataStateCopyWithImpl<$Res,
        $Val extends PackageMetaDataState>
    implements $PackageMetaDataStateCopyWith<$Res> {
  _$PackageMetaDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadingPackageIdImplCopyWith<$Res> {
  factory _$$LoadingPackageIdImplCopyWith(_$LoadingPackageIdImpl value,
          $Res Function(_$LoadingPackageIdImpl) then) =
      __$$LoadingPackageIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String packageId});
}

/// @nodoc
class __$$LoadingPackageIdImplCopyWithImpl<$Res>
    extends _$PackageMetaDataStateCopyWithImpl<$Res, _$LoadingPackageIdImpl>
    implements _$$LoadingPackageIdImplCopyWith<$Res> {
  __$$LoadingPackageIdImplCopyWithImpl(_$LoadingPackageIdImpl _value,
      $Res Function(_$LoadingPackageIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
  }) {
    return _then(_$LoadingPackageIdImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingPackageIdImpl implements _LoadingPackageId {
  _$LoadingPackageIdImpl({required this.packageId});

  @override
  final String packageId;

  @override
  String toString() {
    return 'PackageMetaDataState.loadingPackageId(packageId: $packageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingPackageIdImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingPackageIdImplCopyWith<_$LoadingPackageIdImpl> get copyWith =>
      __$$LoadingPackageIdImplCopyWithImpl<_$LoadingPackageIdImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String packageId) loadingPackageId,
    required TResult Function(String packageId) withData,
    required TResult Function() newPackage,
  }) {
    return loadingPackageId(packageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String packageId)? loadingPackageId,
    TResult? Function(String packageId)? withData,
    TResult? Function()? newPackage,
  }) {
    return loadingPackageId?.call(packageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String packageId)? loadingPackageId,
    TResult Function(String packageId)? withData,
    TResult Function()? newPackage,
    required TResult orElse(),
  }) {
    if (loadingPackageId != null) {
      return loadingPackageId(packageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPackageId value) loadingPackageId,
    required TResult Function(_WithData value) withData,
    required TResult Function(_NewPackage value) newPackage,
  }) {
    return loadingPackageId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPackageId value)? loadingPackageId,
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NewPackage value)? newPackage,
  }) {
    return loadingPackageId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPackageId value)? loadingPackageId,
    TResult Function(_WithData value)? withData,
    TResult Function(_NewPackage value)? newPackage,
    required TResult orElse(),
  }) {
    if (loadingPackageId != null) {
      return loadingPackageId(this);
    }
    return orElse();
  }
}

abstract class _LoadingPackageId implements PackageMetaDataState {
  factory _LoadingPackageId({required final String packageId}) =
      _$LoadingPackageIdImpl;

  String get packageId;
  @JsonKey(ignore: true)
  _$$LoadingPackageIdImplCopyWith<_$LoadingPackageIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithDataImplCopyWith<$Res> {
  factory _$$WithDataImplCopyWith(
          _$WithDataImpl value, $Res Function(_$WithDataImpl) then) =
      __$$WithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String packageId});
}

/// @nodoc
class __$$WithDataImplCopyWithImpl<$Res>
    extends _$PackageMetaDataStateCopyWithImpl<$Res, _$WithDataImpl>
    implements _$$WithDataImplCopyWith<$Res> {
  __$$WithDataImplCopyWithImpl(
      _$WithDataImpl _value, $Res Function(_$WithDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageId = null,
  }) {
    return _then(_$WithDataImpl(
      packageId: null == packageId
          ? _value.packageId
          : packageId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WithDataImpl implements _WithData {
  _$WithDataImpl({required this.packageId});

  @override
  final String packageId;

  @override
  String toString() {
    return 'PackageMetaDataState.withData(packageId: $packageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithDataImpl &&
            (identical(other.packageId, packageId) ||
                other.packageId == packageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, packageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithDataImplCopyWith<_$WithDataImpl> get copyWith =>
      __$$WithDataImplCopyWithImpl<_$WithDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String packageId) loadingPackageId,
    required TResult Function(String packageId) withData,
    required TResult Function() newPackage,
  }) {
    return withData(packageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String packageId)? loadingPackageId,
    TResult? Function(String packageId)? withData,
    TResult? Function()? newPackage,
  }) {
    return withData?.call(packageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String packageId)? loadingPackageId,
    TResult Function(String packageId)? withData,
    TResult Function()? newPackage,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(packageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPackageId value) loadingPackageId,
    required TResult Function(_WithData value) withData,
    required TResult Function(_NewPackage value) newPackage,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPackageId value)? loadingPackageId,
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NewPackage value)? newPackage,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPackageId value)? loadingPackageId,
    TResult Function(_WithData value)? withData,
    TResult Function(_NewPackage value)? newPackage,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }
}

abstract class _WithData implements PackageMetaDataState {
  factory _WithData({required final String packageId}) = _$WithDataImpl;

  String get packageId;
  @JsonKey(ignore: true)
  _$$WithDataImplCopyWith<_$WithDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NewPackageImplCopyWith<$Res> {
  factory _$$NewPackageImplCopyWith(
          _$NewPackageImpl value, $Res Function(_$NewPackageImpl) then) =
      __$$NewPackageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NewPackageImplCopyWithImpl<$Res>
    extends _$PackageMetaDataStateCopyWithImpl<$Res, _$NewPackageImpl>
    implements _$$NewPackageImplCopyWith<$Res> {
  __$$NewPackageImplCopyWithImpl(
      _$NewPackageImpl _value, $Res Function(_$NewPackageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NewPackageImpl implements _NewPackage {
  _$NewPackageImpl();

  @override
  String toString() {
    return 'PackageMetaDataState.newPackage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NewPackageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String packageId) loadingPackageId,
    required TResult Function(String packageId) withData,
    required TResult Function() newPackage,
  }) {
    return newPackage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String packageId)? loadingPackageId,
    TResult? Function(String packageId)? withData,
    TResult? Function()? newPackage,
  }) {
    return newPackage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String packageId)? loadingPackageId,
    TResult Function(String packageId)? withData,
    TResult Function()? newPackage,
    required TResult orElse(),
  }) {
    if (newPackage != null) {
      return newPackage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingPackageId value) loadingPackageId,
    required TResult Function(_WithData value) withData,
    required TResult Function(_NewPackage value) newPackage,
  }) {
    return newPackage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingPackageId value)? loadingPackageId,
    TResult? Function(_WithData value)? withData,
    TResult? Function(_NewPackage value)? newPackage,
  }) {
    return newPackage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingPackageId value)? loadingPackageId,
    TResult Function(_WithData value)? withData,
    TResult Function(_NewPackage value)? newPackage,
    required TResult orElse(),
  }) {
    if (newPackage != null) {
      return newPackage(this);
    }
    return orElse();
  }
}

abstract class _NewPackage implements PackageMetaDataState {
  factory _NewPackage() = _$NewPackageImpl;
}
