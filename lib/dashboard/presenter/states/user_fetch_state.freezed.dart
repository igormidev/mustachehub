// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_fetch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserFetchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CredentialAuthException error) error,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CredentialAuthException error)? error,
    TResult? Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CredentialAuthException error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFetchStateInitial value) initial,
    required TResult Function(_UserFetchStateLoading value) loading,
    required TResult Function(_UserFetchStateError value) error,
    required TResult Function(_UserFetchStateDone value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFetchStateInitial value)? initial,
    TResult? Function(_UserFetchStateLoading value)? loading,
    TResult? Function(_UserFetchStateError value)? error,
    TResult? Function(_UserFetchStateDone value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFetchStateInitial value)? initial,
    TResult Function(_UserFetchStateLoading value)? loading,
    TResult Function(_UserFetchStateError value)? error,
    TResult Function(_UserFetchStateDone value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserFetchStateCopyWith<$Res> {
  factory $UserFetchStateCopyWith(
          UserFetchState value, $Res Function(UserFetchState) then) =
      _$UserFetchStateCopyWithImpl<$Res, UserFetchState>;
}

/// @nodoc
class _$UserFetchStateCopyWithImpl<$Res, $Val extends UserFetchState>
    implements $UserFetchStateCopyWith<$Res> {
  _$UserFetchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserFetchStateInitialImplCopyWith<$Res> {
  factory _$$UserFetchStateInitialImplCopyWith(
          _$UserFetchStateInitialImpl value,
          $Res Function(_$UserFetchStateInitialImpl) then) =
      __$$UserFetchStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchStateInitialImplCopyWithImpl<$Res>
    extends _$UserFetchStateCopyWithImpl<$Res, _$UserFetchStateInitialImpl>
    implements _$$UserFetchStateInitialImplCopyWith<$Res> {
  __$$UserFetchStateInitialImplCopyWithImpl(_$UserFetchStateInitialImpl _value,
      $Res Function(_$UserFetchStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFetchStateInitialImpl implements _UserFetchStateInitial {
  _$UserFetchStateInitialImpl();

  @override
  String toString() {
    return 'UserFetchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFetchStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CredentialAuthException error) error,
    required TResult Function() done,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CredentialAuthException error)? error,
    TResult? Function()? done,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CredentialAuthException error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFetchStateInitial value) initial,
    required TResult Function(_UserFetchStateLoading value) loading,
    required TResult Function(_UserFetchStateError value) error,
    required TResult Function(_UserFetchStateDone value) done,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFetchStateInitial value)? initial,
    TResult? Function(_UserFetchStateLoading value)? loading,
    TResult? Function(_UserFetchStateError value)? error,
    TResult? Function(_UserFetchStateDone value)? done,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFetchStateInitial value)? initial,
    TResult Function(_UserFetchStateLoading value)? loading,
    TResult Function(_UserFetchStateError value)? error,
    TResult Function(_UserFetchStateDone value)? done,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserFetchStateInitial implements UserFetchState {
  factory _UserFetchStateInitial() = _$UserFetchStateInitialImpl;
}

/// @nodoc
abstract class _$$UserFetchStateLoadingImplCopyWith<$Res> {
  factory _$$UserFetchStateLoadingImplCopyWith(
          _$UserFetchStateLoadingImpl value,
          $Res Function(_$UserFetchStateLoadingImpl) then) =
      __$$UserFetchStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchStateLoadingImplCopyWithImpl<$Res>
    extends _$UserFetchStateCopyWithImpl<$Res, _$UserFetchStateLoadingImpl>
    implements _$$UserFetchStateLoadingImplCopyWith<$Res> {
  __$$UserFetchStateLoadingImplCopyWithImpl(_$UserFetchStateLoadingImpl _value,
      $Res Function(_$UserFetchStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFetchStateLoadingImpl implements _UserFetchStateLoading {
  _$UserFetchStateLoadingImpl();

  @override
  String toString() {
    return 'UserFetchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFetchStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CredentialAuthException error) error,
    required TResult Function() done,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CredentialAuthException error)? error,
    TResult? Function()? done,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CredentialAuthException error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFetchStateInitial value) initial,
    required TResult Function(_UserFetchStateLoading value) loading,
    required TResult Function(_UserFetchStateError value) error,
    required TResult Function(_UserFetchStateDone value) done,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFetchStateInitial value)? initial,
    TResult? Function(_UserFetchStateLoading value)? loading,
    TResult? Function(_UserFetchStateError value)? error,
    TResult? Function(_UserFetchStateDone value)? done,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFetchStateInitial value)? initial,
    TResult Function(_UserFetchStateLoading value)? loading,
    TResult Function(_UserFetchStateError value)? error,
    TResult Function(_UserFetchStateDone value)? done,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserFetchStateLoading implements UserFetchState {
  factory _UserFetchStateLoading() = _$UserFetchStateLoadingImpl;
}

/// @nodoc
abstract class _$$UserFetchStateErrorImplCopyWith<$Res> {
  factory _$$UserFetchStateErrorImplCopyWith(_$UserFetchStateErrorImpl value,
          $Res Function(_$UserFetchStateErrorImpl) then) =
      __$$UserFetchStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CredentialAuthException error});
}

/// @nodoc
class __$$UserFetchStateErrorImplCopyWithImpl<$Res>
    extends _$UserFetchStateCopyWithImpl<$Res, _$UserFetchStateErrorImpl>
    implements _$$UserFetchStateErrorImplCopyWith<$Res> {
  __$$UserFetchStateErrorImplCopyWithImpl(_$UserFetchStateErrorImpl _value,
      $Res Function(_$UserFetchStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$UserFetchStateErrorImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as CredentialAuthException,
    ));
  }
}

/// @nodoc

class _$UserFetchStateErrorImpl implements _UserFetchStateError {
  _$UserFetchStateErrorImpl({required this.error});

  @override
  final CredentialAuthException error;

  @override
  String toString() {
    return 'UserFetchState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserFetchStateErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserFetchStateErrorImplCopyWith<_$UserFetchStateErrorImpl> get copyWith =>
      __$$UserFetchStateErrorImplCopyWithImpl<_$UserFetchStateErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CredentialAuthException error) error,
    required TResult Function() done,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CredentialAuthException error)? error,
    TResult? Function()? done,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CredentialAuthException error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFetchStateInitial value) initial,
    required TResult Function(_UserFetchStateLoading value) loading,
    required TResult Function(_UserFetchStateError value) error,
    required TResult Function(_UserFetchStateDone value) done,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFetchStateInitial value)? initial,
    TResult? Function(_UserFetchStateLoading value)? loading,
    TResult? Function(_UserFetchStateError value)? error,
    TResult? Function(_UserFetchStateDone value)? done,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFetchStateInitial value)? initial,
    TResult Function(_UserFetchStateLoading value)? loading,
    TResult Function(_UserFetchStateError value)? error,
    TResult Function(_UserFetchStateDone value)? done,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _UserFetchStateError implements UserFetchState {
  factory _UserFetchStateError({required final CredentialAuthException error}) =
      _$UserFetchStateErrorImpl;

  CredentialAuthException get error;
  @JsonKey(ignore: true)
  _$$UserFetchStateErrorImplCopyWith<_$UserFetchStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserFetchStateDoneImplCopyWith<$Res> {
  factory _$$UserFetchStateDoneImplCopyWith(_$UserFetchStateDoneImpl value,
          $Res Function(_$UserFetchStateDoneImpl) then) =
      __$$UserFetchStateDoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserFetchStateDoneImplCopyWithImpl<$Res>
    extends _$UserFetchStateCopyWithImpl<$Res, _$UserFetchStateDoneImpl>
    implements _$$UserFetchStateDoneImplCopyWith<$Res> {
  __$$UserFetchStateDoneImplCopyWithImpl(_$UserFetchStateDoneImpl _value,
      $Res Function(_$UserFetchStateDoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UserFetchStateDoneImpl implements _UserFetchStateDone {
  _$UserFetchStateDoneImpl();

  @override
  String toString() {
    return 'UserFetchState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserFetchStateDoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(CredentialAuthException error) error,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(CredentialAuthException error)? error,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(CredentialAuthException error)? error,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserFetchStateInitial value) initial,
    required TResult Function(_UserFetchStateLoading value) loading,
    required TResult Function(_UserFetchStateError value) error,
    required TResult Function(_UserFetchStateDone value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserFetchStateInitial value)? initial,
    TResult? Function(_UserFetchStateLoading value)? loading,
    TResult? Function(_UserFetchStateError value)? error,
    TResult? Function(_UserFetchStateDone value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserFetchStateInitial value)? initial,
    TResult Function(_UserFetchStateLoading value)? loading,
    TResult Function(_UserFetchStateError value)? error,
    TResult Function(_UserFetchStateDone value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _UserFetchStateDone implements UserFetchState {
  factory _UserFetchStateDone() = _$UserFetchStateDoneImpl;
}
