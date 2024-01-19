// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CustomException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) dataWithIdDoesNotExist,
    required TResult Function() castObjectError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? dataWithIdDoesNotExist,
    TResult? Function()? castObjectError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? dataWithIdDoesNotExist,
    TResult Function()? castObjectError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataWithIdDoesNotExist value)
        dataWithIdDoesNotExist,
    required TResult Function(_CastObjectError value) castObjectError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult? Function(_CastObjectError value)? castObjectError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult Function(_CastObjectError value)? castObjectError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomExceptionCopyWith<$Res> {
  factory $CustomExceptionCopyWith(
          CustomException value, $Res Function(CustomException) then) =
      _$CustomExceptionCopyWithImpl<$Res, CustomException>;
}

/// @nodoc
class _$CustomExceptionCopyWithImpl<$Res, $Val extends CustomException>
    implements $CustomExceptionCopyWith<$Res> {
  _$CustomExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DataWithIdDoesNotExistImplCopyWith<$Res> {
  factory _$$DataWithIdDoesNotExistImplCopyWith(
          _$DataWithIdDoesNotExistImpl value,
          $Res Function(_$DataWithIdDoesNotExistImpl) then) =
      __$$DataWithIdDoesNotExistImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DataWithIdDoesNotExistImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$DataWithIdDoesNotExistImpl>
    implements _$$DataWithIdDoesNotExistImplCopyWith<$Res> {
  __$$DataWithIdDoesNotExistImplCopyWithImpl(
      _$DataWithIdDoesNotExistImpl _value,
      $Res Function(_$DataWithIdDoesNotExistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DataWithIdDoesNotExistImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DataWithIdDoesNotExistImpl implements _DataWithIdDoesNotExist {
  _$DataWithIdDoesNotExistImpl({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'CustomException.dataWithIdDoesNotExist(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataWithIdDoesNotExistImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataWithIdDoesNotExistImplCopyWith<_$DataWithIdDoesNotExistImpl>
      get copyWith => __$$DataWithIdDoesNotExistImplCopyWithImpl<
          _$DataWithIdDoesNotExistImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) dataWithIdDoesNotExist,
    required TResult Function() castObjectError,
  }) {
    return dataWithIdDoesNotExist(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? dataWithIdDoesNotExist,
    TResult? Function()? castObjectError,
  }) {
    return dataWithIdDoesNotExist?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? dataWithIdDoesNotExist,
    TResult Function()? castObjectError,
    required TResult orElse(),
  }) {
    if (dataWithIdDoesNotExist != null) {
      return dataWithIdDoesNotExist(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataWithIdDoesNotExist value)
        dataWithIdDoesNotExist,
    required TResult Function(_CastObjectError value) castObjectError,
  }) {
    return dataWithIdDoesNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult? Function(_CastObjectError value)? castObjectError,
  }) {
    return dataWithIdDoesNotExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult Function(_CastObjectError value)? castObjectError,
    required TResult orElse(),
  }) {
    if (dataWithIdDoesNotExist != null) {
      return dataWithIdDoesNotExist(this);
    }
    return orElse();
  }
}

abstract class _DataWithIdDoesNotExist implements CustomException {
  factory _DataWithIdDoesNotExist({required final String id}) =
      _$DataWithIdDoesNotExistImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DataWithIdDoesNotExistImplCopyWith<_$DataWithIdDoesNotExistImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CastObjectErrorImplCopyWith<$Res> {
  factory _$$CastObjectErrorImplCopyWith(_$CastObjectErrorImpl value,
          $Res Function(_$CastObjectErrorImpl) then) =
      __$$CastObjectErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CastObjectErrorImplCopyWithImpl<$Res>
    extends _$CustomExceptionCopyWithImpl<$Res, _$CastObjectErrorImpl>
    implements _$$CastObjectErrorImplCopyWith<$Res> {
  __$$CastObjectErrorImplCopyWithImpl(
      _$CastObjectErrorImpl _value, $Res Function(_$CastObjectErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CastObjectErrorImpl implements _CastObjectError {
  _$CastObjectErrorImpl();

  @override
  String toString() {
    return 'CustomException.castObjectError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CastObjectErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) dataWithIdDoesNotExist,
    required TResult Function() castObjectError,
  }) {
    return castObjectError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id)? dataWithIdDoesNotExist,
    TResult? Function()? castObjectError,
  }) {
    return castObjectError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? dataWithIdDoesNotExist,
    TResult Function()? castObjectError,
    required TResult orElse(),
  }) {
    if (castObjectError != null) {
      return castObjectError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DataWithIdDoesNotExist value)
        dataWithIdDoesNotExist,
    required TResult Function(_CastObjectError value) castObjectError,
  }) {
    return castObjectError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult? Function(_CastObjectError value)? castObjectError,
  }) {
    return castObjectError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DataWithIdDoesNotExist value)? dataWithIdDoesNotExist,
    TResult Function(_CastObjectError value)? castObjectError,
    required TResult orElse(),
  }) {
    if (castObjectError != null) {
      return castObjectError(this);
    }
    return orElse();
  }
}

abstract class _CastObjectError implements CustomException {
  factory _CastObjectError() = _$CastObjectErrorImpl;
}
