// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expected_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExpectedPayload _$ExpectedPayloadFromJson(Map<String, dynamic> json) {
  return _ExpectedPayload.fromJson(json);
}

/// @nodoc
mixin _$ExpectedPayload {
  List<TextPipe> get textPipes => throw _privateConstructorUsedError;
  List<BooleanPipe> get booleanPipes => throw _privateConstructorUsedError;
  List<ModelPipe> get modelPipes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpectedPayloadCopyWith<ExpectedPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpectedPayloadCopyWith<$Res> {
  factory $ExpectedPayloadCopyWith(
          ExpectedPayload value, $Res Function(ExpectedPayload) then) =
      _$ExpectedPayloadCopyWithImpl<$Res, ExpectedPayload>;
  @useResult
  $Res call(
      {List<TextPipe> textPipes,
      List<BooleanPipe> booleanPipes,
      List<ModelPipe> modelPipes});
}

/// @nodoc
class _$ExpectedPayloadCopyWithImpl<$Res, $Val extends ExpectedPayload>
    implements $ExpectedPayloadCopyWith<$Res> {
  _$ExpectedPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textPipes = null,
    Object? booleanPipes = null,
    Object? modelPipes = null,
  }) {
    return _then(_value.copyWith(
      textPipes: null == textPipes
          ? _value.textPipes
          : textPipes // ignore: cast_nullable_to_non_nullable
              as List<TextPipe>,
      booleanPipes: null == booleanPipes
          ? _value.booleanPipes
          : booleanPipes // ignore: cast_nullable_to_non_nullable
              as List<BooleanPipe>,
      modelPipes: null == modelPipes
          ? _value.modelPipes
          : modelPipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExpectedPayloadImplCopyWith<$Res>
    implements $ExpectedPayloadCopyWith<$Res> {
  factory _$$ExpectedPayloadImplCopyWith(_$ExpectedPayloadImpl value,
          $Res Function(_$ExpectedPayloadImpl) then) =
      __$$ExpectedPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TextPipe> textPipes,
      List<BooleanPipe> booleanPipes,
      List<ModelPipe> modelPipes});
}

/// @nodoc
class __$$ExpectedPayloadImplCopyWithImpl<$Res>
    extends _$ExpectedPayloadCopyWithImpl<$Res, _$ExpectedPayloadImpl>
    implements _$$ExpectedPayloadImplCopyWith<$Res> {
  __$$ExpectedPayloadImplCopyWithImpl(
      _$ExpectedPayloadImpl _value, $Res Function(_$ExpectedPayloadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textPipes = null,
    Object? booleanPipes = null,
    Object? modelPipes = null,
  }) {
    return _then(_$ExpectedPayloadImpl(
      textPipes: null == textPipes
          ? _value._textPipes
          : textPipes // ignore: cast_nullable_to_non_nullable
              as List<TextPipe>,
      booleanPipes: null == booleanPipes
          ? _value._booleanPipes
          : booleanPipes // ignore: cast_nullable_to_non_nullable
              as List<BooleanPipe>,
      modelPipes: null == modelPipes
          ? _value._modelPipes
          : modelPipes // ignore: cast_nullable_to_non_nullable
              as List<ModelPipe>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$ExpectedPayloadImpl implements _ExpectedPayload {
  _$ExpectedPayloadImpl(
      {required final List<TextPipe> textPipes,
      required final List<BooleanPipe> booleanPipes,
      required final List<ModelPipe> modelPipes})
      : _textPipes = textPipes,
        _booleanPipes = booleanPipes,
        _modelPipes = modelPipes;

  factory _$ExpectedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExpectedPayloadImplFromJson(json);

  final List<TextPipe> _textPipes;
  @override
  List<TextPipe> get textPipes {
    if (_textPipes is EqualUnmodifiableListView) return _textPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textPipes);
  }

  final List<BooleanPipe> _booleanPipes;
  @override
  List<BooleanPipe> get booleanPipes {
    if (_booleanPipes is EqualUnmodifiableListView) return _booleanPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleanPipes);
  }

  final List<ModelPipe> _modelPipes;
  @override
  List<ModelPipe> get modelPipes {
    if (_modelPipes is EqualUnmodifiableListView) return _modelPipes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelPipes);
  }

  @override
  String toString() {
    return 'ExpectedPayload(textPipes: $textPipes, booleanPipes: $booleanPipes, modelPipes: $modelPipes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExpectedPayloadImpl &&
            const DeepCollectionEquality()
                .equals(other._textPipes, _textPipes) &&
            const DeepCollectionEquality()
                .equals(other._booleanPipes, _booleanPipes) &&
            const DeepCollectionEquality()
                .equals(other._modelPipes, _modelPipes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_textPipes),
      const DeepCollectionEquality().hash(_booleanPipes),
      const DeepCollectionEquality().hash(_modelPipes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExpectedPayloadImplCopyWith<_$ExpectedPayloadImpl> get copyWith =>
      __$$ExpectedPayloadImplCopyWithImpl<_$ExpectedPayloadImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExpectedPayloadImplToJson(
      this,
    );
  }
}

abstract class _ExpectedPayload implements ExpectedPayload {
  factory _ExpectedPayload(
      {required final List<TextPipe> textPipes,
      required final List<BooleanPipe> booleanPipes,
      required final List<ModelPipe> modelPipes}) = _$ExpectedPayloadImpl;

  factory _ExpectedPayload.fromJson(Map<String, dynamic> json) =
      _$ExpectedPayloadImpl.fromJson;

  @override
  List<TextPipe> get textPipes;
  @override
  List<BooleanPipe> get booleanPipes;
  @override
  List<ModelPipe> get modelPipes;
  @override
  @JsonKey(ignore: true)
  _$$ExpectedPayloadImplCopyWith<_$ExpectedPayloadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
