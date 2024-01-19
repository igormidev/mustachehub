// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoadingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshing,
    required TResult Function() processing,
    required TResult Function() done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshing,
    TResult? Function()? processing,
    TResult? Function()? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshing,
    TResult Function()? processing,
    TResult Function()? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingStateCopyWith<$Res> {
  factory $LoadingStateCopyWith(
          LoadingState value, $Res Function(LoadingState) then) =
      _$LoadingStateCopyWithImpl<$Res, LoadingState>;
}

/// @nodoc
class _$LoadingStateCopyWithImpl<$Res, $Val extends LoadingState>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RefreshingImplCopyWith<$Res> {
  factory _$$RefreshingImplCopyWith(
          _$RefreshingImpl value, $Res Function(_$RefreshingImpl) then) =
      __$$RefreshingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RefreshingImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$RefreshingImpl>
    implements _$$RefreshingImplCopyWith<$Res> {
  __$$RefreshingImplCopyWithImpl(
      _$RefreshingImpl _value, $Res Function(_$RefreshingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RefreshingImpl implements _Refreshing {
  _$RefreshingImpl();

  @override
  String toString() {
    return 'LoadingState.refreshing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RefreshingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshing,
    required TResult Function() processing,
    required TResult Function() done,
  }) {
    return refreshing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshing,
    TResult? Function()? processing,
    TResult? Function()? done,
  }) {
    return refreshing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshing,
    TResult Function()? processing,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return refreshing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Done value)? done,
  }) {
    return refreshing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (refreshing != null) {
      return refreshing(this);
    }
    return orElse();
  }
}

abstract class _Refreshing implements LoadingState {
  factory _Refreshing() = _$RefreshingImpl;
}

/// @nodoc
abstract class _$$ProcessingImplCopyWith<$Res> {
  factory _$$ProcessingImplCopyWith(
          _$ProcessingImpl value, $Res Function(_$ProcessingImpl) then) =
      __$$ProcessingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProcessingImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$ProcessingImpl>
    implements _$$ProcessingImplCopyWith<$Res> {
  __$$ProcessingImplCopyWithImpl(
      _$ProcessingImpl _value, $Res Function(_$ProcessingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProcessingImpl implements _Processing {
  _$ProcessingImpl();

  @override
  String toString() {
    return 'LoadingState.processing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProcessingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshing,
    required TResult Function() processing,
    required TResult Function() done,
  }) {
    return processing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshing,
    TResult? Function()? processing,
    TResult? Function()? done,
  }) {
    return processing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshing,
    TResult Function()? processing,
    TResult Function()? done,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Done value)? done,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }
}

abstract class _Processing implements LoadingState {
  factory _Processing() = _$ProcessingImpl;
}

/// @nodoc
abstract class _$$DoneImplCopyWith<$Res> {
  factory _$$DoneImplCopyWith(
          _$DoneImpl value, $Res Function(_$DoneImpl) then) =
      __$$DoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DoneImplCopyWithImpl<$Res>
    extends _$LoadingStateCopyWithImpl<$Res, _$DoneImpl>
    implements _$$DoneImplCopyWith<$Res> {
  __$$DoneImplCopyWithImpl(_$DoneImpl _value, $Res Function(_$DoneImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DoneImpl implements _Done {
  _$DoneImpl();

  @override
  String toString() {
    return 'LoadingState.done()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() refreshing,
    required TResult Function() processing,
    required TResult Function() done,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? refreshing,
    TResult? Function()? processing,
    TResult? Function()? done,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? refreshing,
    TResult Function()? processing,
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
    required TResult Function(_Refreshing value) refreshing,
    required TResult Function(_Processing value) processing,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Refreshing value)? refreshing,
    TResult? Function(_Processing value)? processing,
    TResult? Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Refreshing value)? refreshing,
    TResult Function(_Processing value)? processing,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements LoadingState {
  factory _Done() = _$DoneImpl;
}
