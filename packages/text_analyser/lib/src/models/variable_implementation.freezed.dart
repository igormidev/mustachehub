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
    case 'choice':
      return VariableImplementationChoice.fromJson(json);
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
    required TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)
        choice,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationChoice value) choice,
    required TResult Function(VariableImplementationModel value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationChoice value)? choice,
    TResult? Function(VariableImplementationModel value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationChoice value)? choice,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VariableImplementation to a JSON map.
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(booleanTokenIdentifier),
      booleanImplementation);

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)
        choice,
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
    TResult? Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    required TResult Function(VariableImplementationChoice value) choice,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationChoice value)? choice,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationChoice value)? choice,
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(textTokenIdentifier));

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)
        choice,
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
    TResult? Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    required TResult Function(VariableImplementationChoice value) choice,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationChoice value)? choice,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationChoice value)? choice,
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableImplementationTextImplCopyWith<_$VariableImplementationTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableImplementationChoiceImplCopyWith<$Res> {
  factory _$$VariableImplementationChoiceImplCopyWith(
          _$VariableImplementationChoiceImpl value,
          $Res Function(_$VariableImplementationChoiceImpl) then) =
      __$$VariableImplementationChoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {ChoiceTokenIdentifier choiceTokenIdentifier,
      ChoiceImplementation choiceImplementation});

  $ChoiceImplementationCopyWith<$Res> get choiceImplementation;
}

/// @nodoc
class __$$VariableImplementationChoiceImplCopyWithImpl<$Res>
    extends _$VariableImplementationCopyWithImpl<$Res,
        _$VariableImplementationChoiceImpl>
    implements _$$VariableImplementationChoiceImplCopyWith<$Res> {
  __$$VariableImplementationChoiceImplCopyWithImpl(
      _$VariableImplementationChoiceImpl _value,
      $Res Function(_$VariableImplementationChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choiceTokenIdentifier = freezed,
    Object? choiceImplementation = null,
  }) {
    return _then(_$VariableImplementationChoiceImpl(
      choiceTokenIdentifier: freezed == choiceTokenIdentifier
          ? _value.choiceTokenIdentifier
          : choiceTokenIdentifier // ignore: cast_nullable_to_non_nullable
              as ChoiceTokenIdentifier,
      choiceImplementation: null == choiceImplementation
          ? _value.choiceImplementation
          : choiceImplementation // ignore: cast_nullable_to_non_nullable
              as ChoiceImplementation,
    ));
  }

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceImplementationCopyWith<$Res> get choiceImplementation {
    return $ChoiceImplementationCopyWith<$Res>(_value.choiceImplementation,
        (value) {
      return _then(_value.copyWith(choiceImplementation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableImplementationChoiceImpl
    implements VariableImplementationChoice {
  _$VariableImplementationChoiceImpl(
      {required this.choiceTokenIdentifier,
      required this.choiceImplementation,
      final String? $type})
      : $type = $type ?? 'choice';

  factory _$VariableImplementationChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableImplementationChoiceImplFromJson(json);

  @override
  final ChoiceTokenIdentifier choiceTokenIdentifier;
  @override
  final ChoiceImplementation choiceImplementation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableImplementation.choice(choiceTokenIdentifier: $choiceTokenIdentifier, choiceImplementation: $choiceImplementation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableImplementationChoiceImpl &&
            const DeepCollectionEquality()
                .equals(other.choiceTokenIdentifier, choiceTokenIdentifier) &&
            (identical(other.choiceImplementation, choiceImplementation) ||
                other.choiceImplementation == choiceImplementation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(choiceTokenIdentifier),
      choiceImplementation);

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableImplementationChoiceImplCopyWith<
          _$VariableImplementationChoiceImpl>
      get copyWith => __$$VariableImplementationChoiceImplCopyWithImpl<
          _$VariableImplementationChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)
        boolean,
    required TResult Function(TextTokenIdentifier textTokenIdentifier) text,
    required TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)
        choice,
    required TResult Function(ModelTokenIdentifier modelTokenIdentifier) model,
  }) {
    return choice(choiceTokenIdentifier, choiceImplementation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult? Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult? Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
    TResult? Function(ModelTokenIdentifier modelTokenIdentifier)? model,
  }) {
    return choice?.call(choiceTokenIdentifier, choiceImplementation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BooleanTokenIdentifier booleanTokenIdentifier,
            BooleanImplementation booleanImplementation)?
        boolean,
    TResult Function(TextTokenIdentifier textTokenIdentifier)? text,
    TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
    TResult Function(ModelTokenIdentifier modelTokenIdentifier)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(choiceTokenIdentifier, choiceImplementation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableImplementationBoolean value) boolean,
    required TResult Function(VariableImplementationText value) text,
    required TResult Function(VariableImplementationChoice value) choice,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationChoice value)? choice,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationChoice value)? choice,
    TResult Function(VariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableImplementationChoiceImplToJson(
      this,
    );
  }
}

abstract class VariableImplementationChoice implements VariableImplementation {
  factory VariableImplementationChoice(
          {required final ChoiceTokenIdentifier choiceTokenIdentifier,
          required final ChoiceImplementation choiceImplementation}) =
      _$VariableImplementationChoiceImpl;

  factory VariableImplementationChoice.fromJson(Map<String, dynamic> json) =
      _$VariableImplementationChoiceImpl.fromJson;

  ChoiceTokenIdentifier get choiceTokenIdentifier;
  ChoiceImplementation get choiceImplementation;

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableImplementationChoiceImplCopyWith<
          _$VariableImplementationChoiceImpl>
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(modelTokenIdentifier));

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
    required TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)
        choice,
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
    TResult? Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    TResult Function(ChoiceTokenIdentifier choiceTokenIdentifier,
            ChoiceImplementation choiceImplementation)?
        choice,
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
    required TResult Function(VariableImplementationChoice value) choice,
    required TResult Function(VariableImplementationModel value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableImplementationBoolean value)? boolean,
    TResult? Function(VariableImplementationText value)? text,
    TResult? Function(VariableImplementationChoice value)? choice,
    TResult? Function(VariableImplementationModel value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableImplementationBoolean value)? boolean,
    TResult Function(VariableImplementationText value)? text,
    TResult Function(VariableImplementationChoice value)? choice,
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

  /// Create a copy of VariableImplementation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Serializes this BooleanImplementation to a JSON map.
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

  /// Create a copy of BooleanImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of BooleanImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of BooleanImplementation
  /// with the given fields replaced by the non-null parameter values.
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

ChoiceImplementation _$ChoiceImplementationFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normalValue':
      return _ChoiceImplementationNormalValue.fromJson(json);
    case 'invertedValue':
      return _ChoiceImplementationInvertedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ChoiceImplementation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChoiceImplementation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChoiceImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceImplementationInvertedValue value)
        invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceImplementationInvertedValue value)? invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceImplementationInvertedValue value)? invertedValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChoiceImplementation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceImplementationCopyWith<$Res> {
  factory $ChoiceImplementationCopyWith(ChoiceImplementation value,
          $Res Function(ChoiceImplementation) then) =
      _$ChoiceImplementationCopyWithImpl<$Res, ChoiceImplementation>;
}

/// @nodoc
class _$ChoiceImplementationCopyWithImpl<$Res,
        $Val extends ChoiceImplementation>
    implements $ChoiceImplementationCopyWith<$Res> {
  _$ChoiceImplementationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChoiceImplementationNormalValueImplCopyWith<$Res> {
  factory _$$ChoiceImplementationNormalValueImplCopyWith(
          _$ChoiceImplementationNormalValueImpl value,
          $Res Function(_$ChoiceImplementationNormalValueImpl) then) =
      __$$ChoiceImplementationNormalValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceImplementationNormalValueImplCopyWithImpl<$Res>
    extends _$ChoiceImplementationCopyWithImpl<$Res,
        _$ChoiceImplementationNormalValueImpl>
    implements _$$ChoiceImplementationNormalValueImplCopyWith<$Res> {
  __$$ChoiceImplementationNormalValueImplCopyWithImpl(
      _$ChoiceImplementationNormalValueImpl _value,
      $Res Function(_$ChoiceImplementationNormalValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChoiceImplementationNormalValueImpl
    implements _ChoiceImplementationNormalValue {
  _$ChoiceImplementationNormalValueImpl({final String? $type})
      : $type = $type ?? 'normalValue';

  factory _$ChoiceImplementationNormalValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoiceImplementationNormalValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoiceImplementation.normalValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceImplementationNormalValueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
  }) {
    return normalValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
  }) {
    return normalValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
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
    required TResult Function(_ChoiceImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceImplementationInvertedValue value)
        invertedValue,
  }) {
    return normalValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceImplementationInvertedValue value)? invertedValue,
  }) {
    return normalValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceImplementationInvertedValue value)? invertedValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceImplementationNormalValueImplToJson(
      this,
    );
  }
}

abstract class _ChoiceImplementationNormalValue
    implements ChoiceImplementation {
  factory _ChoiceImplementationNormalValue() =
      _$ChoiceImplementationNormalValueImpl;

  factory _ChoiceImplementationNormalValue.fromJson(Map<String, dynamic> json) =
      _$ChoiceImplementationNormalValueImpl.fromJson;
}

/// @nodoc
abstract class _$$ChoiceImplementationInvertedValueImplCopyWith<$Res> {
  factory _$$ChoiceImplementationInvertedValueImplCopyWith(
          _$ChoiceImplementationInvertedValueImpl value,
          $Res Function(_$ChoiceImplementationInvertedValueImpl) then) =
      __$$ChoiceImplementationInvertedValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceImplementationInvertedValueImplCopyWithImpl<$Res>
    extends _$ChoiceImplementationCopyWithImpl<$Res,
        _$ChoiceImplementationInvertedValueImpl>
    implements _$$ChoiceImplementationInvertedValueImplCopyWith<$Res> {
  __$$ChoiceImplementationInvertedValueImplCopyWithImpl(
      _$ChoiceImplementationInvertedValueImpl _value,
      $Res Function(_$ChoiceImplementationInvertedValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChoiceImplementationInvertedValueImpl
    implements _ChoiceImplementationInvertedValue {
  _$ChoiceImplementationInvertedValueImpl({final String? $type})
      : $type = $type ?? 'invertedValue';

  factory _$ChoiceImplementationInvertedValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoiceImplementationInvertedValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoiceImplementation.invertedValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceImplementationInvertedValueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
  }) {
    return invertedValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
  }) {
    return invertedValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
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
    required TResult Function(_ChoiceImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceImplementationInvertedValue value)
        invertedValue,
  }) {
    return invertedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceImplementationInvertedValue value)? invertedValue,
  }) {
    return invertedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceImplementationInvertedValue value)? invertedValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceImplementationInvertedValueImplToJson(
      this,
    );
  }
}

abstract class _ChoiceImplementationInvertedValue
    implements ChoiceImplementation {
  factory _ChoiceImplementationInvertedValue() =
      _$ChoiceImplementationInvertedValueImpl;

  factory _ChoiceImplementationInvertedValue.fromJson(
          Map<String, dynamic> json) =
      _$ChoiceImplementationInvertedValueImpl.fromJson;
}
