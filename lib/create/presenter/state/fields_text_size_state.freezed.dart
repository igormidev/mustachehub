// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fields_text_size_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FieldsTextSizeState _$FieldsTextSizeStateFromJson(Map<String, dynamic> json) {
  return _Normal.fromJson(json);
}

/// @nodoc
mixin _$FieldsTextSizeState {
  double get regexIdenfifierTextSize => throw _privateConstructorUsedError;
  double get testStringTextSize => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double regexIdenfifierTextSize, double testStringTextSize)
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double regexIdenfifierTextSize, double testStringTextSize)?
        normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double regexIdenfifierTextSize, double testStringTextSize)?
        normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldsTextSizeStateCopyWith<FieldsTextSizeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldsTextSizeStateCopyWith<$Res> {
  factory $FieldsTextSizeStateCopyWith(
          FieldsTextSizeState value, $Res Function(FieldsTextSizeState) then) =
      _$FieldsTextSizeStateCopyWithImpl<$Res, FieldsTextSizeState>;
  @useResult
  $Res call({double regexIdenfifierTextSize, double testStringTextSize});
}

/// @nodoc
class _$FieldsTextSizeStateCopyWithImpl<$Res, $Val extends FieldsTextSizeState>
    implements $FieldsTextSizeStateCopyWith<$Res> {
  _$FieldsTextSizeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regexIdenfifierTextSize = null,
    Object? testStringTextSize = null,
  }) {
    return _then(_value.copyWith(
      regexIdenfifierTextSize: null == regexIdenfifierTextSize
          ? _value.regexIdenfifierTextSize
          : regexIdenfifierTextSize // ignore: cast_nullable_to_non_nullable
              as double,
      testStringTextSize: null == testStringTextSize
          ? _value.testStringTextSize
          : testStringTextSize // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NormalImplCopyWith<$Res>
    implements $FieldsTextSizeStateCopyWith<$Res> {
  factory _$$NormalImplCopyWith(
          _$NormalImpl value, $Res Function(_$NormalImpl) then) =
      __$$NormalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double regexIdenfifierTextSize, double testStringTextSize});
}

/// @nodoc
class __$$NormalImplCopyWithImpl<$Res>
    extends _$FieldsTextSizeStateCopyWithImpl<$Res, _$NormalImpl>
    implements _$$NormalImplCopyWith<$Res> {
  __$$NormalImplCopyWithImpl(
      _$NormalImpl _value, $Res Function(_$NormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regexIdenfifierTextSize = null,
    Object? testStringTextSize = null,
  }) {
    return _then(_$NormalImpl(
      regexIdenfifierTextSize: null == regexIdenfifierTextSize
          ? _value.regexIdenfifierTextSize
          : regexIdenfifierTextSize // ignore: cast_nullable_to_non_nullable
              as double,
      testStringTextSize: null == testStringTextSize
          ? _value.testStringTextSize
          : testStringTextSize // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NormalImpl implements _Normal {
  const _$NormalImpl(
      {required this.regexIdenfifierTextSize,
      required this.testStringTextSize});

  factory _$NormalImpl.fromJson(Map<String, dynamic> json) =>
      _$$NormalImplFromJson(json);

  @override
  final double regexIdenfifierTextSize;
  @override
  final double testStringTextSize;

  @override
  String toString() {
    return 'FieldsTextSizeState.normal(regexIdenfifierTextSize: $regexIdenfifierTextSize, testStringTextSize: $testStringTextSize)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NormalImpl &&
            (identical(
                    other.regexIdenfifierTextSize, regexIdenfifierTextSize) ||
                other.regexIdenfifierTextSize == regexIdenfifierTextSize) &&
            (identical(other.testStringTextSize, testStringTextSize) ||
                other.testStringTextSize == testStringTextSize));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, regexIdenfifierTextSize, testStringTextSize);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      __$$NormalImplCopyWithImpl<_$NormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            double regexIdenfifierTextSize, double testStringTextSize)
        normal,
  }) {
    return normal(regexIdenfifierTextSize, testStringTextSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            double regexIdenfifierTextSize, double testStringTextSize)?
        normal,
  }) {
    return normal?.call(regexIdenfifierTextSize, testStringTextSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double regexIdenfifierTextSize, double testStringTextSize)?
        normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(regexIdenfifierTextSize, testStringTextSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Normal value) normal,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Normal value)? normal,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Normal value)? normal,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NormalImplToJson(
      this,
    );
  }
}

abstract class _Normal implements FieldsTextSizeState {
  const factory _Normal(
      {required final double regexIdenfifierTextSize,
      required final double testStringTextSize}) = _$NormalImpl;

  factory _Normal.fromJson(Map<String, dynamic> json) = _$NormalImpl.fromJson;

  @override
  double get regexIdenfifierTextSize;
  @override
  double get testStringTextSize;
  @override
  @JsonKey(ignore: true)
  _$$NormalImplCopyWith<_$NormalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
