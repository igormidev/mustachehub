// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_stats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FormStatsState _$FormStatsStateFromJson(Map<String, dynamic> json) {
  return _FormStatsState.fromJson(json);
}

/// @nodoc
mixin _$FormStatsState {
  int? get textGridSize => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? textGridSize) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? textGridSize)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? textGridSize)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatsState value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatsState value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatsState value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FormStatsStateCopyWith<FormStatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormStatsStateCopyWith<$Res> {
  factory $FormStatsStateCopyWith(
          FormStatsState value, $Res Function(FormStatsState) then) =
      _$FormStatsStateCopyWithImpl<$Res, FormStatsState>;
  @useResult
  $Res call({int? textGridSize});
}

/// @nodoc
class _$FormStatsStateCopyWithImpl<$Res, $Val extends FormStatsState>
    implements $FormStatsStateCopyWith<$Res> {
  _$FormStatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textGridSize = freezed,
  }) {
    return _then(_value.copyWith(
      textGridSize: freezed == textGridSize
          ? _value.textGridSize
          : textGridSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormStatsStateImplCopyWith<$Res>
    implements $FormStatsStateCopyWith<$Res> {
  factory _$$FormStatsStateImplCopyWith(_$FormStatsStateImpl value,
          $Res Function(_$FormStatsStateImpl) then) =
      __$$FormStatsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? textGridSize});
}

/// @nodoc
class __$$FormStatsStateImplCopyWithImpl<$Res>
    extends _$FormStatsStateCopyWithImpl<$Res, _$FormStatsStateImpl>
    implements _$$FormStatsStateImplCopyWith<$Res> {
  __$$FormStatsStateImplCopyWithImpl(
      _$FormStatsStateImpl _value, $Res Function(_$FormStatsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textGridSize = freezed,
  }) {
    return _then(_$FormStatsStateImpl(
      textGridSize: freezed == textGridSize
          ? _value.textGridSize
          : textGridSize // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FormStatsStateImpl implements _FormStatsState {
  _$FormStatsStateImpl({required this.textGridSize});

  factory _$FormStatsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FormStatsStateImplFromJson(json);

  @override
  final int? textGridSize;

  @override
  String toString() {
    return 'FormStatsState.normal(textGridSize: $textGridSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormStatsStateImpl &&
            (identical(other.textGridSize, textGridSize) ||
                other.textGridSize == textGridSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, textGridSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormStatsStateImplCopyWith<_$FormStatsStateImpl> get copyWith =>
      __$$FormStatsStateImplCopyWithImpl<_$FormStatsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? textGridSize) normal,
  }) {
    return normal(textGridSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? textGridSize)? normal,
  }) {
    return normal?.call(textGridSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? textGridSize)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(textGridSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormStatsState value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FormStatsState value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormStatsState value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FormStatsStateImplToJson(
      this,
    );
  }
}

abstract class _FormStatsState implements FormStatsState {
  factory _FormStatsState({required final int? textGridSize}) =
      _$FormStatsStateImpl;

  factory _FormStatsState.fromJson(Map<String, dynamic> json) =
      _$FormStatsStateImpl.fromJson;

  @override
  int? get textGridSize;
  @override
  @JsonKey(ignore: true)
  _$$FormStatsStateImplCopyWith<_$FormStatsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
