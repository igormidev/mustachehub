// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_implementation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VariableImplementation _$VariableImplementationFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'boolean':
      return VariableImplementationBoolean.fromJson(json);
    case 'text':
      return VariableImplementationText.fromJson(json);
    case 'model':
      return VariableImplementationModel.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'VariableImplementation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VariableImplementation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)
        boolean,
    required TResult Function(TextTokenIdentifier textTokenIdentifier) text,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationModel value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationModel value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableImplementationCopyWith<$Res> {
  factory $VariableImplementationCopyWith(VariableImplementation value,
          $Res Function(VariableImplementation) then) =
      _$VariableImplementationCopyWithImpl<$Res, VariableImplementation>;
}

/// @nodoc
class _$VariableImplementationCopyWithImpl<$Res,
        $Val extends VariableImplementation>
    implements $VariableImplementationCopyWith<$Res> {
  _$VariableImplementationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$VariableImplementationBooleanImplCopyWith<$Res> {
  factory _$$VariableImplementationBooleanImplCopyWith(
          _$VariableImplementationBooleanImpl value,
          $Res Function(_$VariableImplementationBooleanImpl) then) =
      __$$VariableImplementationBooleanImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {BooleanTokenIdentifier booleanTokenIdentifier,
      BooleanImplementation booleanImplementation});

  $BooleanImplementationCopyWith<$Res> get booleanImplementation;
}

/// @nodoc
class __$$VariableImplementationBooleanImplCopyWithImpl<$Res>
    extends _$VariableImplementationCopyWithImpl<$Res,
        _$VariableImplementationBooleanImpl>
    implements _$$VariableImplementationBooleanImplCopyWith<$Res> {
  __$$VariableImplementationBooleanImplCopyWithImpl(
      _$VariableImplementationBooleanImpl _value,
      $Res Function(_$VariableImplementationBooleanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booleanTokenIdentifier = freezed,
    Object? booleanImplementation = null,
  }) {
    return _then(_$VariableImplementationBooleanImpl(
      booleanTokenIdentifier: freezed == booleanTokenIdentifier
          ? _value.booleanTokenIdentifier
          : booleanTokenIdentifier // ignore: cast_nullable_to_non_nullable
              as BooleanTokenIdentifier,
      booleanImplementation: null == booleanImplementation
          ? _value.booleanImplementation
          : booleanImplementation // ignore: cast_nullable_to_non_nullable
              as BooleanImplementation,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $BooleanImplementationCopyWith<$Res> get booleanImplementation {
    return $BooleanImplementationCopyWith<$Res>(_value.booleanImplementation,
        (value) {
      return _then(_value.copyWith(booleanImplementation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableImplementationBooleanImpl
    implements VariableImplementationBoolean {
  _$VariableImplementationBooleanImpl(
      {required this.booleanTokenIdentifier,
      required this.booleanImplementation,
      final String? $type})
      : $type = $type ?? 'boolean';

  factory _$VariableImplementationBooleanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableImplementationBooleanImplFromJson(json);

  @override
  final BooleanTokenIdentifier booleanTokenIdentifier;
  @override
  final BooleanImplementation booleanImplementation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableImplementation.boolean(booleanTokenIdentifier: $booleanTokenIdentifier, booleanImplementation: $booleanImplementation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableImplementationBooleanImpl &&
            const DeepCollectionEquality()
                .equals(other.booleanTokenIdentifier, booleanTokenIdentifier) &&
            (identical(other.booleanImplementation, booleanImplementation) ||
                other.booleanImplementation == booleanImplementation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(booleanTokenIdentifier),
      booleanImplementation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableImplementationBooleanImplCopyWith<
          _$VariableImplementationBooleanImpl>
      get copyWith => __$$VariableImplementationBooleanImplCopyWithImpl<
          _$VariableImplementationBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)
        boolean,
    required TResult Function(TextTokenIdentifier textTokenIdentifier) text,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) {
    return boolean(booleanTokenIdentifier, booleanImplementation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) {
    return boolean?.call(booleanTokenIdentifier, booleanImplementation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(booleanTokenIdentifier, booleanImplementation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableImplementationBooleanImplToJson(
      this,
    );
  }
}

abstract class VariableImplementationBoolean implements VariableImplementation {
  factory VariableImplementationBoolean(
          {required final BooleanTokenIdentifier booleanTokenIdentifier,
          required final BooleanImplementation booleanImplementation}) =
      _$VariableImplementationBooleanImpl;

  factory VariableImplementationBoolean.fromJson(Map<String, dynamic> json) =
      _$VariableImplementationBooleanImpl.fromJson;

  BooleanTokenIdentifier get booleanTokenIdentifier;
  BooleanImplementation get booleanImplementation;
  @JsonKey(ignore: true)
  _$$VariableImplementationBooleanImplCopyWith<
          _$VariableImplementationBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableImplementationTextImplCopyWith<$Res> {
  factory _$$VariableImplementationTextImplCopyWith(
          _$VariableImplementationTextImpl value,
          $Res Function(_$VariableImplementationTextImpl) then) =
      __$$VariableImplementationTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TextTokenIdentifier textTokenIdentifier});
}

/// @nodoc
class __$$VariableImplementationTextImplCopyWithImpl<$Res>
    extends _$VariableImplementationCopyWithImpl<$Res,
        _$VariableImplementationTextImpl>
    implements _$$VariableImplementationTextImplCopyWith<$Res> {
  __$$VariableImplementationTextImplCopyWithImpl(
      _$VariableImplementationTextImpl _value,
      $Res Function(_$VariableImplementationTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textTokenIdentifier = freezed,
  }) {
    return _then(_$VariableImplementationTextImpl(
      textTokenIdentifier: freezed == textTokenIdentifier
          ? _value.textTokenIdentifier
          : textTokenIdentifier // ignore: cast_nullable_to_non_nullable
              as TextTokenIdentifier,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableImplementationTextImpl implements VariableImplementationText {
  _$VariableImplementationTextImpl(
      {required this.textTokenIdentifier, final String? $type})
      : $type = $type ?? 'text';

  factory _$VariableImplementationTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableImplementationTextImplFromJson(json);

  @override
  final TextTokenIdentifier textTokenIdentifier;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableImplementation.text(textTokenIdentifier: $textTokenIdentifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableImplementationTextImpl &&
            const DeepCollectionEquality()
                .equals(other.textTokenIdentifier, textTokenIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(textTokenIdentifier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableImplementationTextImplCopyWith<_$VariableImplementationTextImpl>
      get copyWith => __$$VariableImplementationTextImplCopyWithImpl<
          _$VariableImplementationTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)
        boolean,
    required TResult Function(TextTokenIdentifier textTokenIdentifier) text,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) {
    return text(textTokenIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) {
    return text?.call(textTokenIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(textTokenIdentifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableImplementationTextImplToJson(
      this,
    );
  }
}

abstract class VariableImplementationText implements VariableImplementation {
  factory VariableImplementationText(
          {required final TextTokenIdentifier textTokenIdentifier}) =
      _$VariableImplementationTextImpl;

  factory VariableImplementationText.fromJson(Map<String, dynamic> json) =
      _$VariableImplementationTextImpl.fromJson;

  TextTokenIdentifier get textTokenIdentifier;
  @JsonKey(ignore: true)
  _$$VariableImplementationTextImplCopyWith<_$VariableImplementationTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableImplementationModelImplCopyWith<$Res> {
  factory _$$VariableImplementationModelImplCopyWith(
          _$VariableImplementationModelImpl value,
          $Res Function(_$VariableImplementationModelImpl) then) =
      __$$VariableImplementationModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelTokenIdentifier modelTokenIdentifier});
}

/// @nodoc
class __$$VariableImplementationModelImplCopyWithImpl<$Res>
    extends _$VariableImplementationCopyWithImpl<$Res,
        _$VariableImplementationModelImpl>
    implements _$$VariableImplementationModelImplCopyWith<$Res> {
  __$$VariableImplementationModelImplCopyWithImpl(
      _$VariableImplementationModelImpl _value,
      $Res Function(_$VariableImplementationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelTokenIdentifier = freezed,
  }) {
    return _then(_$VariableImplementationModelImpl(
      modelTokenIdentifier: freezed == modelTokenIdentifier
          ? _value.modelTokenIdentifier
          : modelTokenIdentifier // ignore: cast_nullable_to_non_nullable
              as ModelTokenIdentifier,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableImplementationModelImpl implements VariableImplementationModel {
  _$VariableImplementationModelImpl(
      {required this.modelTokenIdentifier, final String? $type})
      : $type = $type ?? 'model';

  factory _$VariableImplementationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableImplementationModelImplFromJson(json);

  @override
  final ModelTokenIdentifier modelTokenIdentifier;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableImplementation.model(modelTokenIdentifier: $modelTokenIdentifier)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableImplementationModelImpl &&
            const DeepCollectionEquality()
                .equals(other.modelTokenIdentifier, modelTokenIdentifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(modelTokenIdentifier));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableImplementationModelImplCopyWith<_$VariableImplementationModelImpl>
      get copyWith => __$$VariableImplementationModelImplCopyWithImpl<
          _$VariableImplementationModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)
        boolean,
    required TResult Function(TextTokenIdentifier textTokenIdentifier) text,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) {
    return model(modelTokenIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) {
    return model?.call(modelTokenIdentifier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(modelTokenIdentifier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableImplementationModelImplToJson(
      this,
    );
  }
}

abstract class VariableImplementationModel implements VariableImplementation {
  factory VariableImplementationModel(
          {required final ModelTokenIdentifier modelTokenIdentifier}) =
      _$VariableImplementationModelImpl;

  factory VariableImplementationModel.fromJson(Map<String, dynamic> json) =
      _$VariableImplementationModelImpl.fromJson;

  ModelTokenIdentifier get modelTokenIdentifier;
  @JsonKey(ignore: true)
  _$$VariableImplementationModelImplCopyWith<_$VariableImplementationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BooleanImplementation _$BooleanImplementationFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'invertedValue':
      return _BooleanImplementationInvertedValue.fromJson(json);
    case 'normalValue':
      return _BooleanImplementationNormalValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'BooleanImplementation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BooleanImplementation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invertedValue,
    required TResult Function() normalValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invertedValue,
    TResult? Function()? normalValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invertedValue,
    TResult Function()? normalValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooleanImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_BooleanImplementationNormalValue value)
        normalValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult? Function(_BooleanImplementationNormalValue value)? normalValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult Function(_BooleanImplementationNormalValue value)? normalValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanImplementationCopyWith<$Res> {
  factory $BooleanImplementationCopyWith(BooleanImplementation value,
          $Res Function(BooleanImplementation) then) =
      _$BooleanImplementationCopyWithImpl<$Res, BooleanImplementation>;
}

/// @nodoc
class _$BooleanImplementationCopyWithImpl<$Res,
        $Val extends BooleanImplementation>
    implements $BooleanImplementationCopyWith<$Res> {
  _$BooleanImplementationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$BooleanImplementationInvertedValueImplCopyWith<$Res> {
  factory _$$BooleanImplementationInvertedValueImplCopyWith(
          _$BooleanImplementationInvertedValueImpl value,
          $Res Function(_$BooleanImplementationInvertedValueImpl) then) =
      __$$BooleanImplementationInvertedValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooleanImplementationInvertedValueImplCopyWithImpl<$Res>
    extends _$BooleanImplementationCopyWithImpl<$Res,
        _$BooleanImplementationInvertedValueImpl>
    implements _$$BooleanImplementationInvertedValueImplCopyWith<$Res> {
  __$$BooleanImplementationInvertedValueImplCopyWithImpl(
      _$BooleanImplementationInvertedValueImpl _value,
      $Res Function(_$BooleanImplementationInvertedValueImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BooleanImplementationInvertedValueImpl
    implements _BooleanImplementationInvertedValue {
  _$BooleanImplementationInvertedValueImpl({final String? $type})
      : $type = $type ?? 'invertedValue';

  factory _$BooleanImplementationInvertedValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BooleanImplementationInvertedValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BooleanImplementation.invertedValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanImplementationInvertedValueImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invertedValue,
    required TResult Function() normalValue,
  }) {
    return invertedValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invertedValue,
    TResult? Function()? normalValue,
  }) {
    return invertedValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invertedValue,
    TResult Function()? normalValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooleanImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_BooleanImplementationNormalValue value)
        normalValue,
  }) {
    return invertedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult? Function(_BooleanImplementationNormalValue value)? normalValue,
  }) {
    return invertedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult Function(_BooleanImplementationNormalValue value)? normalValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanImplementationInvertedValueImplToJson(
      this,
    );
  }
}

abstract class _BooleanImplementationInvertedValue
    implements BooleanImplementation {
  factory _BooleanImplementationInvertedValue() =
      _$BooleanImplementationInvertedValueImpl;

  factory _BooleanImplementationInvertedValue.fromJson(
          Map<String, dynamic> json) =
      _$BooleanImplementationInvertedValueImpl.fromJson;
}

/// @nodoc
abstract class _$$BooleanImplementationNormalValueImplCopyWith<$Res> {
  factory _$$BooleanImplementationNormalValueImplCopyWith(
          _$BooleanImplementationNormalValueImpl value,
          $Res Function(_$BooleanImplementationNormalValueImpl) then) =
      __$$BooleanImplementationNormalValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BooleanImplementationNormalValueImplCopyWithImpl<$Res>
    extends _$BooleanImplementationCopyWithImpl<$Res,
        _$BooleanImplementationNormalValueImpl>
    implements _$$BooleanImplementationNormalValueImplCopyWith<$Res> {
  __$$BooleanImplementationNormalValueImplCopyWithImpl(
      _$BooleanImplementationNormalValueImpl _value,
      $Res Function(_$BooleanImplementationNormalValueImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BooleanImplementationNormalValueImpl
    implements _BooleanImplementationNormalValue {
  _$BooleanImplementationNormalValueImpl({final String? $type})
      : $type = $type ?? 'normalValue';

  factory _$BooleanImplementationNormalValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BooleanImplementationNormalValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'BooleanImplementation.normalValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanImplementationNormalValueImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invertedValue,
    required TResult Function() normalValue,
  }) {
    return normalValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invertedValue,
    TResult? Function()? normalValue,
  }) {
    return normalValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invertedValue,
    TResult Function()? normalValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BooleanImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_BooleanImplementationNormalValue value)
        normalValue,
  }) {
    return normalValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult? Function(_BooleanImplementationNormalValue value)? normalValue,
  }) {
    return normalValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BooleanImplementationInvertedValue value)? invertedValue,
    TResult Function(_BooleanImplementationNormalValue value)? normalValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanImplementationNormalValueImplToJson(
      this,
    );
  }
}

abstract class _BooleanImplementationNormalValue
    implements BooleanImplementation {
  factory _BooleanImplementationNormalValue() =
      _$BooleanImplementationNormalValueImpl;

  factory _BooleanImplementationNormalValue.fromJson(
          Map<String, dynamic> json) =
      _$BooleanImplementationNormalValueImpl.fromJson;
}
