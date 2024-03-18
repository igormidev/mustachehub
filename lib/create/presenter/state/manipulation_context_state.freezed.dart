// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'manipulation_context_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ManipulationContextState _$ManipulationContextStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'initial':
      return _ManipulationContextStateInitial.fromJson(json);
    case 'creating':
      return _ManipulationContextStateCreating.fromJson(json);
    case 'editing':
      return _ManipulationContextStateEditing.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ManipulationContextState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ManipulationContextState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function() editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creating,
    TResult? Function()? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function()? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManipulationContextStateInitial value) initial,
    required TResult Function(_ManipulationContextStateCreating value) creating,
    required TResult Function(_ManipulationContextStateEditing value) editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManipulationContextStateInitial value)? initial,
    TResult? Function(_ManipulationContextStateCreating value)? creating,
    TResult? Function(_ManipulationContextStateEditing value)? editing,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManipulationContextStateInitial value)? initial,
    TResult Function(_ManipulationContextStateCreating value)? creating,
    TResult Function(_ManipulationContextStateEditing value)? editing,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ManipulationContextStateCopyWith<$Res> {
  factory $ManipulationContextStateCopyWith(ManipulationContextState value,
          $Res Function(ManipulationContextState) then) =
      _$ManipulationContextStateCopyWithImpl<$Res, ManipulationContextState>;
}

/// @nodoc
class _$ManipulationContextStateCopyWithImpl<$Res,
        $Val extends ManipulationContextState>
    implements $ManipulationContextStateCopyWith<$Res> {
  _$ManipulationContextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ManipulationContextStateInitialImplCopyWith<$Res> {
  factory _$$ManipulationContextStateInitialImplCopyWith(
          _$ManipulationContextStateInitialImpl value,
          $Res Function(_$ManipulationContextStateInitialImpl) then) =
      __$$ManipulationContextStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManipulationContextStateInitialImplCopyWithImpl<$Res>
    extends _$ManipulationContextStateCopyWithImpl<$Res,
        _$ManipulationContextStateInitialImpl>
    implements _$$ManipulationContextStateInitialImplCopyWith<$Res> {
  __$$ManipulationContextStateInitialImplCopyWithImpl(
      _$ManipulationContextStateInitialImpl _value,
      $Res Function(_$ManipulationContextStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ManipulationContextStateInitialImpl
    implements _ManipulationContextStateInitial {
  _$ManipulationContextStateInitialImpl({final String? $type})
      : $type = $type ?? 'initial';

  factory _$ManipulationContextStateInitialImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ManipulationContextStateInitialImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ManipulationContextState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManipulationContextStateInitialImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function() editing,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creating,
    TResult? Function()? editing,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function()? editing,
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
    required TResult Function(_ManipulationContextStateInitial value) initial,
    required TResult Function(_ManipulationContextStateCreating value) creating,
    required TResult Function(_ManipulationContextStateEditing value) editing,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManipulationContextStateInitial value)? initial,
    TResult? Function(_ManipulationContextStateCreating value)? creating,
    TResult? Function(_ManipulationContextStateEditing value)? editing,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManipulationContextStateInitial value)? initial,
    TResult Function(_ManipulationContextStateCreating value)? creating,
    TResult Function(_ManipulationContextStateEditing value)? editing,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ManipulationContextStateInitialImplToJson(
      this,
    );
  }
}

abstract class _ManipulationContextStateInitial
    implements ManipulationContextState {
  factory _ManipulationContextStateInitial() =
      _$ManipulationContextStateInitialImpl;

  factory _ManipulationContextStateInitial.fromJson(Map<String, dynamic> json) =
      _$ManipulationContextStateInitialImpl.fromJson;
}

/// @nodoc
abstract class _$$ManipulationContextStateCreatingImplCopyWith<$Res> {
  factory _$$ManipulationContextStateCreatingImplCopyWith(
          _$ManipulationContextStateCreatingImpl value,
          $Res Function(_$ManipulationContextStateCreatingImpl) then) =
      __$$ManipulationContextStateCreatingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManipulationContextStateCreatingImplCopyWithImpl<$Res>
    extends _$ManipulationContextStateCopyWithImpl<$Res,
        _$ManipulationContextStateCreatingImpl>
    implements _$$ManipulationContextStateCreatingImplCopyWith<$Res> {
  __$$ManipulationContextStateCreatingImplCopyWithImpl(
      _$ManipulationContextStateCreatingImpl _value,
      $Res Function(_$ManipulationContextStateCreatingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ManipulationContextStateCreatingImpl
    implements _ManipulationContextStateCreating {
  _$ManipulationContextStateCreatingImpl({final String? $type})
      : $type = $type ?? 'creating';

  factory _$ManipulationContextStateCreatingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ManipulationContextStateCreatingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ManipulationContextState.creating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManipulationContextStateCreatingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function() editing,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creating,
    TResult? Function()? editing,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function()? editing,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManipulationContextStateInitial value) initial,
    required TResult Function(_ManipulationContextStateCreating value) creating,
    required TResult Function(_ManipulationContextStateEditing value) editing,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManipulationContextStateInitial value)? initial,
    TResult? Function(_ManipulationContextStateCreating value)? creating,
    TResult? Function(_ManipulationContextStateEditing value)? editing,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManipulationContextStateInitial value)? initial,
    TResult Function(_ManipulationContextStateCreating value)? creating,
    TResult Function(_ManipulationContextStateEditing value)? editing,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ManipulationContextStateCreatingImplToJson(
      this,
    );
  }
}

abstract class _ManipulationContextStateCreating
    implements ManipulationContextState {
  factory _ManipulationContextStateCreating() =
      _$ManipulationContextStateCreatingImpl;

  factory _ManipulationContextStateCreating.fromJson(
          Map<String, dynamic> json) =
      _$ManipulationContextStateCreatingImpl.fromJson;
}

/// @nodoc
abstract class _$$ManipulationContextStateEditingImplCopyWith<$Res> {
  factory _$$ManipulationContextStateEditingImplCopyWith(
          _$ManipulationContextStateEditingImpl value,
          $Res Function(_$ManipulationContextStateEditingImpl) then) =
      __$$ManipulationContextStateEditingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ManipulationContextStateEditingImplCopyWithImpl<$Res>
    extends _$ManipulationContextStateCopyWithImpl<$Res,
        _$ManipulationContextStateEditingImpl>
    implements _$$ManipulationContextStateEditingImplCopyWith<$Res> {
  __$$ManipulationContextStateEditingImplCopyWithImpl(
      _$ManipulationContextStateEditingImpl _value,
      $Res Function(_$ManipulationContextStateEditingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$ManipulationContextStateEditingImpl
    implements _ManipulationContextStateEditing {
  _$ManipulationContextStateEditingImpl({final String? $type})
      : $type = $type ?? 'editing';

  factory _$ManipulationContextStateEditingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ManipulationContextStateEditingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ManipulationContextState.editing()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ManipulationContextStateEditingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() creating,
    required TResult Function() editing,
  }) {
    return editing();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? creating,
    TResult? Function()? editing,
  }) {
    return editing?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? creating,
    TResult Function()? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ManipulationContextStateInitial value) initial,
    required TResult Function(_ManipulationContextStateCreating value) creating,
    required TResult Function(_ManipulationContextStateEditing value) editing,
  }) {
    return editing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ManipulationContextStateInitial value)? initial,
    TResult? Function(_ManipulationContextStateCreating value)? creating,
    TResult? Function(_ManipulationContextStateEditing value)? editing,
  }) {
    return editing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ManipulationContextStateInitial value)? initial,
    TResult Function(_ManipulationContextStateCreating value)? creating,
    TResult Function(_ManipulationContextStateEditing value)? editing,
    required TResult orElse(),
  }) {
    if (editing != null) {
      return editing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ManipulationContextStateEditingImplToJson(
      this,
    );
  }
}

abstract class _ManipulationContextStateEditing
    implements ManipulationContextState {
  factory _ManipulationContextStateEditing() =
      _$ManipulationContextStateEditingImpl;

  factory _ManipulationContextStateEditing.fromJson(Map<String, dynamic> json) =
      _$ManipulationContextStateEditingImpl.fromJson;
}
