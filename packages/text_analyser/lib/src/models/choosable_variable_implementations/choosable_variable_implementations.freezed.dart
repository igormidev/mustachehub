// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choosable_variable_implementations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoosableVariableImplementations _$ChoosableVariableImplementationsFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return ChoosableVariableImplementationText.fromJson(json);
    case 'choice':
      return ChoosableVariableImplementationChoice.fromJson(json);
    case 'boolean':
      return ChoosableVariableImplementationBoolean.fromJson(json);
    case 'model':
      return ChoosableVariableImplementationModel.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ChoosableVariableImplementations',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChoosableVariableImplementations {
  String get variableName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) text,
    required TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)
        choice,
    required TResult Function(
            String variableName, BooleanUseImplementation booleanImplementation)
        boolean,
    required TResult Function(
            String variableName, ModelUseImplementations modelImplementation)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? text,
    TResult? Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult? Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult? Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? text,
    TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosableVariableImplementationText value) text,
    required TResult Function(ChoosableVariableImplementationChoice value)
        choice,
    required TResult Function(ChoosableVariableImplementationBoolean value)
        boolean,
    required TResult Function(ChoosableVariableImplementationModel value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChoosableVariableImplementationText value)? text,
    TResult? Function(ChoosableVariableImplementationChoice value)? choice,
    TResult? Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult? Function(ChoosableVariableImplementationModel value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosableVariableImplementationText value)? text,
    TResult Function(ChoosableVariableImplementationChoice value)? choice,
    TResult Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult Function(ChoosableVariableImplementationModel value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChoosableVariableImplementations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChoosableVariableImplementationsCopyWith<ChoosableVariableImplementations>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoosableVariableImplementationsCopyWith<$Res> {
  factory $ChoosableVariableImplementationsCopyWith(
          ChoosableVariableImplementations value,
          $Res Function(ChoosableVariableImplementations) then) =
      _$ChoosableVariableImplementationsCopyWithImpl<$Res,
          ChoosableVariableImplementations>;
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class _$ChoosableVariableImplementationsCopyWithImpl<$Res,
        $Val extends ChoosableVariableImplementations>
    implements $ChoosableVariableImplementationsCopyWith<$Res> {
  _$ChoosableVariableImplementationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_value.copyWith(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoosableVariableImplementationTextImplCopyWith<$Res>
    implements $ChoosableVariableImplementationsCopyWith<$Res> {
  factory _$$ChoosableVariableImplementationTextImplCopyWith(
          _$ChoosableVariableImplementationTextImpl value,
          $Res Function(_$ChoosableVariableImplementationTextImpl) then) =
      __$$ChoosableVariableImplementationTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName});
}

/// @nodoc
class __$$ChoosableVariableImplementationTextImplCopyWithImpl<$Res>
    extends _$ChoosableVariableImplementationsCopyWithImpl<$Res,
        _$ChoosableVariableImplementationTextImpl>
    implements _$$ChoosableVariableImplementationTextImplCopyWith<$Res> {
  __$$ChoosableVariableImplementationTextImplCopyWithImpl(
      _$ChoosableVariableImplementationTextImpl _value,
      $Res Function(_$ChoosableVariableImplementationTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
  }) {
    return _then(_$ChoosableVariableImplementationTextImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoosableVariableImplementationTextImpl
    implements ChoosableVariableImplementationText {
  _$ChoosableVariableImplementationTextImpl(
      {required this.variableName, final String? $type})
      : $type = $type ?? 'text';

  factory _$ChoosableVariableImplementationTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoosableVariableImplementationTextImplFromJson(json);

  @override
  final String variableName;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoosableVariableImplementations.text(variableName: $variableName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoosableVariableImplementationTextImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, variableName);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoosableVariableImplementationTextImplCopyWith<
          _$ChoosableVariableImplementationTextImpl>
      get copyWith => __$$ChoosableVariableImplementationTextImplCopyWithImpl<
          _$ChoosableVariableImplementationTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) text,
    required TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)
        choice,
    required TResult Function(
            String variableName, BooleanUseImplementation booleanImplementation)
        boolean,
    required TResult Function(
            String variableName, ModelUseImplementations modelImplementation)
        model,
  }) {
    return text(variableName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? text,
    TResult? Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult? Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult? Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
  }) {
    return text?.call(variableName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? text,
    TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(variableName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosableVariableImplementationText value) text,
    required TResult Function(ChoosableVariableImplementationChoice value)
        choice,
    required TResult Function(ChoosableVariableImplementationBoolean value)
        boolean,
    required TResult Function(ChoosableVariableImplementationModel value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChoosableVariableImplementationText value)? text,
    TResult? Function(ChoosableVariableImplementationChoice value)? choice,
    TResult? Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult? Function(ChoosableVariableImplementationModel value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosableVariableImplementationText value)? text,
    TResult Function(ChoosableVariableImplementationChoice value)? choice,
    TResult Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult Function(ChoosableVariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoosableVariableImplementationTextImplToJson(
      this,
    );
  }
}

abstract class ChoosableVariableImplementationText
    implements ChoosableVariableImplementations {
  factory ChoosableVariableImplementationText(
          {required final String variableName}) =
      _$ChoosableVariableImplementationTextImpl;

  factory ChoosableVariableImplementationText.fromJson(
          Map<String, dynamic> json) =
      _$ChoosableVariableImplementationTextImpl.fromJson;

  @override
  String get variableName;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoosableVariableImplementationTextImplCopyWith<
          _$ChoosableVariableImplementationTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoosableVariableImplementationChoiceImplCopyWith<$Res>
    implements $ChoosableVariableImplementationsCopyWith<$Res> {
  factory _$$ChoosableVariableImplementationChoiceImplCopyWith(
          _$ChoosableVariableImplementationChoiceImpl value,
          $Res Function(_$ChoosableVariableImplementationChoiceImpl) then) =
      __$$ChoosableVariableImplementationChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String variableName, ChoiceUseImplementation choiceImplementation});

  $ChoiceUseImplementationCopyWith<$Res> get choiceImplementation;
}

/// @nodoc
class __$$ChoosableVariableImplementationChoiceImplCopyWithImpl<$Res>
    extends _$ChoosableVariableImplementationsCopyWithImpl<$Res,
        _$ChoosableVariableImplementationChoiceImpl>
    implements _$$ChoosableVariableImplementationChoiceImplCopyWith<$Res> {
  __$$ChoosableVariableImplementationChoiceImplCopyWithImpl(
      _$ChoosableVariableImplementationChoiceImpl _value,
      $Res Function(_$ChoosableVariableImplementationChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
    Object? choiceImplementation = null,
  }) {
    return _then(_$ChoosableVariableImplementationChoiceImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
      choiceImplementation: null == choiceImplementation
          ? _value.choiceImplementation
          : choiceImplementation // ignore: cast_nullable_to_non_nullable
              as ChoiceUseImplementation,
    ));
  }

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChoiceUseImplementationCopyWith<$Res> get choiceImplementation {
    return $ChoiceUseImplementationCopyWith<$Res>(_value.choiceImplementation,
        (value) {
      return _then(_value.copyWith(choiceImplementation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoosableVariableImplementationChoiceImpl
    implements ChoosableVariableImplementationChoice {
  _$ChoosableVariableImplementationChoiceImpl(
      {required this.variableName,
      required this.choiceImplementation,
      final String? $type})
      : $type = $type ?? 'choice';

  factory _$ChoosableVariableImplementationChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoosableVariableImplementationChoiceImplFromJson(json);

  @override
  final String variableName;
  @override
  final ChoiceUseImplementation choiceImplementation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoosableVariableImplementations.choice(variableName: $variableName, choiceImplementation: $choiceImplementation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoosableVariableImplementationChoiceImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName) &&
            (identical(other.choiceImplementation, choiceImplementation) ||
                other.choiceImplementation == choiceImplementation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, variableName, choiceImplementation);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoosableVariableImplementationChoiceImplCopyWith<
          _$ChoosableVariableImplementationChoiceImpl>
      get copyWith => __$$ChoosableVariableImplementationChoiceImplCopyWithImpl<
          _$ChoosableVariableImplementationChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) text,
    required TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)
        choice,
    required TResult Function(
            String variableName, BooleanUseImplementation booleanImplementation)
        boolean,
    required TResult Function(
            String variableName, ModelUseImplementations modelImplementation)
        model,
  }) {
    return choice(variableName, choiceImplementation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? text,
    TResult? Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult? Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult? Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
  }) {
    return choice?.call(variableName, choiceImplementation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? text,
    TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(variableName, choiceImplementation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosableVariableImplementationText value) text,
    required TResult Function(ChoosableVariableImplementationChoice value)
        choice,
    required TResult Function(ChoosableVariableImplementationBoolean value)
        boolean,
    required TResult Function(ChoosableVariableImplementationModel value) model,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChoosableVariableImplementationText value)? text,
    TResult? Function(ChoosableVariableImplementationChoice value)? choice,
    TResult? Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult? Function(ChoosableVariableImplementationModel value)? model,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosableVariableImplementationText value)? text,
    TResult Function(ChoosableVariableImplementationChoice value)? choice,
    TResult Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult Function(ChoosableVariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoosableVariableImplementationChoiceImplToJson(
      this,
    );
  }
}

abstract class ChoosableVariableImplementationChoice
    implements ChoosableVariableImplementations {
  factory ChoosableVariableImplementationChoice(
          {required final String variableName,
          required final ChoiceUseImplementation choiceImplementation}) =
      _$ChoosableVariableImplementationChoiceImpl;

  factory ChoosableVariableImplementationChoice.fromJson(
          Map<String, dynamic> json) =
      _$ChoosableVariableImplementationChoiceImpl.fromJson;

  @override
  String get variableName;
  ChoiceUseImplementation get choiceImplementation;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoosableVariableImplementationChoiceImplCopyWith<
          _$ChoosableVariableImplementationChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoosableVariableImplementationBooleanImplCopyWith<$Res>
    implements $ChoosableVariableImplementationsCopyWith<$Res> {
  factory _$$ChoosableVariableImplementationBooleanImplCopyWith(
          _$ChoosableVariableImplementationBooleanImpl value,
          $Res Function(_$ChoosableVariableImplementationBooleanImpl) then) =
      __$$ChoosableVariableImplementationBooleanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String variableName, BooleanUseImplementation booleanImplementation});

  $BooleanUseImplementationCopyWith<$Res> get booleanImplementation;
}

/// @nodoc
class __$$ChoosableVariableImplementationBooleanImplCopyWithImpl<$Res>
    extends _$ChoosableVariableImplementationsCopyWithImpl<$Res,
        _$ChoosableVariableImplementationBooleanImpl>
    implements _$$ChoosableVariableImplementationBooleanImplCopyWith<$Res> {
  __$$ChoosableVariableImplementationBooleanImplCopyWithImpl(
      _$ChoosableVariableImplementationBooleanImpl _value,
      $Res Function(_$ChoosableVariableImplementationBooleanImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
    Object? booleanImplementation = null,
  }) {
    return _then(_$ChoosableVariableImplementationBooleanImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
      booleanImplementation: null == booleanImplementation
          ? _value.booleanImplementation
          : booleanImplementation // ignore: cast_nullable_to_non_nullable
              as BooleanUseImplementation,
    ));
  }

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BooleanUseImplementationCopyWith<$Res> get booleanImplementation {
    return $BooleanUseImplementationCopyWith<$Res>(_value.booleanImplementation,
        (value) {
      return _then(_value.copyWith(booleanImplementation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoosableVariableImplementationBooleanImpl
    implements ChoosableVariableImplementationBoolean {
  _$ChoosableVariableImplementationBooleanImpl(
      {required this.variableName,
      required this.booleanImplementation,
      final String? $type})
      : $type = $type ?? 'boolean';

  factory _$ChoosableVariableImplementationBooleanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoosableVariableImplementationBooleanImplFromJson(json);

  @override
  final String variableName;
  @override
  final BooleanUseImplementation booleanImplementation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoosableVariableImplementations.boolean(variableName: $variableName, booleanImplementation: $booleanImplementation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoosableVariableImplementationBooleanImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName) &&
            (identical(other.booleanImplementation, booleanImplementation) ||
                other.booleanImplementation == booleanImplementation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, variableName, booleanImplementation);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoosableVariableImplementationBooleanImplCopyWith<
          _$ChoosableVariableImplementationBooleanImpl>
      get copyWith =>
          __$$ChoosableVariableImplementationBooleanImplCopyWithImpl<
              _$ChoosableVariableImplementationBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) text,
    required TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)
        choice,
    required TResult Function(
            String variableName, BooleanUseImplementation booleanImplementation)
        boolean,
    required TResult Function(
            String variableName, ModelUseImplementations modelImplementation)
        model,
  }) {
    return boolean(variableName, booleanImplementation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? text,
    TResult? Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult? Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult? Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
  }) {
    return boolean?.call(variableName, booleanImplementation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? text,
    TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(variableName, booleanImplementation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosableVariableImplementationText value) text,
    required TResult Function(ChoosableVariableImplementationChoice value)
        choice,
    required TResult Function(ChoosableVariableImplementationBoolean value)
        boolean,
    required TResult Function(ChoosableVariableImplementationModel value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChoosableVariableImplementationText value)? text,
    TResult? Function(ChoosableVariableImplementationChoice value)? choice,
    TResult? Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult? Function(ChoosableVariableImplementationModel value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosableVariableImplementationText value)? text,
    TResult Function(ChoosableVariableImplementationChoice value)? choice,
    TResult Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult Function(ChoosableVariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoosableVariableImplementationBooleanImplToJson(
      this,
    );
  }
}

abstract class ChoosableVariableImplementationBoolean
    implements ChoosableVariableImplementations {
  factory ChoosableVariableImplementationBoolean(
          {required final String variableName,
          required final BooleanUseImplementation booleanImplementation}) =
      _$ChoosableVariableImplementationBooleanImpl;

  factory ChoosableVariableImplementationBoolean.fromJson(
          Map<String, dynamic> json) =
      _$ChoosableVariableImplementationBooleanImpl.fromJson;

  @override
  String get variableName;
  BooleanUseImplementation get booleanImplementation;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoosableVariableImplementationBooleanImplCopyWith<
          _$ChoosableVariableImplementationBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoosableVariableImplementationModelImplCopyWith<$Res>
    implements $ChoosableVariableImplementationsCopyWith<$Res> {
  factory _$$ChoosableVariableImplementationModelImplCopyWith(
          _$ChoosableVariableImplementationModelImpl value,
          $Res Function(_$ChoosableVariableImplementationModelImpl) then) =
      __$$ChoosableVariableImplementationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String variableName, ModelUseImplementations modelImplementation});

  $ModelUseImplementationsCopyWith<$Res> get modelImplementation;
}

/// @nodoc
class __$$ChoosableVariableImplementationModelImplCopyWithImpl<$Res>
    extends _$ChoosableVariableImplementationsCopyWithImpl<$Res,
        _$ChoosableVariableImplementationModelImpl>
    implements _$$ChoosableVariableImplementationModelImplCopyWith<$Res> {
  __$$ChoosableVariableImplementationModelImplCopyWithImpl(
      _$ChoosableVariableImplementationModelImpl _value,
      $Res Function(_$ChoosableVariableImplementationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? variableName = null,
    Object? modelImplementation = null,
  }) {
    return _then(_$ChoosableVariableImplementationModelImpl(
      variableName: null == variableName
          ? _value.variableName
          : variableName // ignore: cast_nullable_to_non_nullable
              as String,
      modelImplementation: null == modelImplementation
          ? _value.modelImplementation
          : modelImplementation // ignore: cast_nullable_to_non_nullable
              as ModelUseImplementations,
    ));
  }

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ModelUseImplementationsCopyWith<$Res> get modelImplementation {
    return $ModelUseImplementationsCopyWith<$Res>(_value.modelImplementation,
        (value) {
      return _then(_value.copyWith(modelImplementation: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoosableVariableImplementationModelImpl
    implements ChoosableVariableImplementationModel {
  _$ChoosableVariableImplementationModelImpl(
      {required this.variableName,
      required this.modelImplementation,
      final String? $type})
      : $type = $type ?? 'model';

  factory _$ChoosableVariableImplementationModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoosableVariableImplementationModelImplFromJson(json);

  @override
  final String variableName;
  @override
  final ModelUseImplementations modelImplementation;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoosableVariableImplementations.model(variableName: $variableName, modelImplementation: $modelImplementation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoosableVariableImplementationModelImpl &&
            (identical(other.variableName, variableName) ||
                other.variableName == variableName) &&
            (identical(other.modelImplementation, modelImplementation) ||
                other.modelImplementation == modelImplementation));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, variableName, modelImplementation);

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoosableVariableImplementationModelImplCopyWith<
          _$ChoosableVariableImplementationModelImpl>
      get copyWith => __$$ChoosableVariableImplementationModelImplCopyWithImpl<
          _$ChoosableVariableImplementationModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String variableName) text,
    required TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)
        choice,
    required TResult Function(
            String variableName, BooleanUseImplementation booleanImplementation)
        boolean,
    required TResult Function(
            String variableName, ModelUseImplementations modelImplementation)
        model,
  }) {
    return model(variableName, modelImplementation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String variableName)? text,
    TResult? Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult? Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult? Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
  }) {
    return model?.call(variableName, modelImplementation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String variableName)? text,
    TResult Function(
            String variableName, ChoiceUseImplementation choiceImplementation)?
        choice,
    TResult Function(String variableName,
            BooleanUseImplementation booleanImplementation)?
        boolean,
    TResult Function(
            String variableName, ModelUseImplementations modelImplementation)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(variableName, modelImplementation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChoosableVariableImplementationText value) text,
    required TResult Function(ChoosableVariableImplementationChoice value)
        choice,
    required TResult Function(ChoosableVariableImplementationBoolean value)
        boolean,
    required TResult Function(ChoosableVariableImplementationModel value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChoosableVariableImplementationText value)? text,
    TResult? Function(ChoosableVariableImplementationChoice value)? choice,
    TResult? Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult? Function(ChoosableVariableImplementationModel value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChoosableVariableImplementationText value)? text,
    TResult Function(ChoosableVariableImplementationChoice value)? choice,
    TResult Function(ChoosableVariableImplementationBoolean value)? boolean,
    TResult Function(ChoosableVariableImplementationModel value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoosableVariableImplementationModelImplToJson(
      this,
    );
  }
}

abstract class ChoosableVariableImplementationModel
    implements ChoosableVariableImplementations {
  factory ChoosableVariableImplementationModel(
          {required final String variableName,
          required final ModelUseImplementations modelImplementation}) =
      _$ChoosableVariableImplementationModelImpl;

  factory ChoosableVariableImplementationModel.fromJson(
          Map<String, dynamic> json) =
      _$ChoosableVariableImplementationModelImpl.fromJson;

  @override
  String get variableName;
  ModelUseImplementations get modelImplementation;

  /// Create a copy of ChoosableVariableImplementations
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoosableVariableImplementationModelImplCopyWith<
          _$ChoosableVariableImplementationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
