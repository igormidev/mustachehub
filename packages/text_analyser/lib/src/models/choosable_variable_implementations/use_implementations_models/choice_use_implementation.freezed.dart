// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_use_implementation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChoiceUseImplementation _$ChoiceUseImplementationFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normalValue':
      return _ChoiceUseImplementationNormalValue.fromJson(json);
    case 'invertedValue':
      return _ChoiceUseImplementationInvertedValue.fromJson(json);
    case 'textValue':
      return _ChoiceUseImplementationTextValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ChoiceUseImplementation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ChoiceUseImplementation {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
    required TResult Function() textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
    TResult? Function()? textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
    TResult Function()? textValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChoiceUseImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceUseImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_ChoiceUseImplementationTextValue value)
        textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult? Function(_ChoiceUseImplementationTextValue value)? textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult Function(_ChoiceUseImplementationTextValue value)? textValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ChoiceUseImplementation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceUseImplementationCopyWith<$Res> {
  factory $ChoiceUseImplementationCopyWith(ChoiceUseImplementation value,
          $Res Function(ChoiceUseImplementation) then) =
      _$ChoiceUseImplementationCopyWithImpl<$Res, ChoiceUseImplementation>;
}

/// @nodoc
class _$ChoiceUseImplementationCopyWithImpl<$Res,
        $Val extends ChoiceUseImplementation>
    implements $ChoiceUseImplementationCopyWith<$Res> {
  _$ChoiceUseImplementationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChoiceUseImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChoiceUseImplementationNormalValueImplCopyWith<$Res> {
  factory _$$ChoiceUseImplementationNormalValueImplCopyWith(
          _$ChoiceUseImplementationNormalValueImpl value,
          $Res Function(_$ChoiceUseImplementationNormalValueImpl) then) =
      __$$ChoiceUseImplementationNormalValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceUseImplementationNormalValueImplCopyWithImpl<$Res>
    extends _$ChoiceUseImplementationCopyWithImpl<$Res,
        _$ChoiceUseImplementationNormalValueImpl>
    implements _$$ChoiceUseImplementationNormalValueImplCopyWith<$Res> {
  __$$ChoiceUseImplementationNormalValueImplCopyWithImpl(
      _$ChoiceUseImplementationNormalValueImpl _value,
      $Res Function(_$ChoiceUseImplementationNormalValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceUseImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChoiceUseImplementationNormalValueImpl
    implements _ChoiceUseImplementationNormalValue {
  _$ChoiceUseImplementationNormalValueImpl({final String? $type})
      : $type = $type ?? 'normalValue';

  factory _$ChoiceUseImplementationNormalValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoiceUseImplementationNormalValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoiceUseImplementation.normalValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceUseImplementationNormalValueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
    required TResult Function() textValue,
  }) {
    return normalValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
    TResult? Function()? textValue,
  }) {
    return normalValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
    TResult Function()? textValue,
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
    required TResult Function(_ChoiceUseImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceUseImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_ChoiceUseImplementationTextValue value)
        textValue,
  }) {
    return normalValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult? Function(_ChoiceUseImplementationTextValue value)? textValue,
  }) {
    return normalValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult Function(_ChoiceUseImplementationTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceUseImplementationNormalValueImplToJson(
      this,
    );
  }
}

abstract class _ChoiceUseImplementationNormalValue
    implements ChoiceUseImplementation {
  factory _ChoiceUseImplementationNormalValue() =
      _$ChoiceUseImplementationNormalValueImpl;

  factory _ChoiceUseImplementationNormalValue.fromJson(
          Map<String, dynamic> json) =
      _$ChoiceUseImplementationNormalValueImpl.fromJson;
}

/// @nodoc
abstract class _$$ChoiceUseImplementationInvertedValueImplCopyWith<$Res> {
  factory _$$ChoiceUseImplementationInvertedValueImplCopyWith(
          _$ChoiceUseImplementationInvertedValueImpl value,
          $Res Function(_$ChoiceUseImplementationInvertedValueImpl) then) =
      __$$ChoiceUseImplementationInvertedValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceUseImplementationInvertedValueImplCopyWithImpl<$Res>
    extends _$ChoiceUseImplementationCopyWithImpl<$Res,
        _$ChoiceUseImplementationInvertedValueImpl>
    implements _$$ChoiceUseImplementationInvertedValueImplCopyWith<$Res> {
  __$$ChoiceUseImplementationInvertedValueImplCopyWithImpl(
      _$ChoiceUseImplementationInvertedValueImpl _value,
      $Res Function(_$ChoiceUseImplementationInvertedValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceUseImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChoiceUseImplementationInvertedValueImpl
    implements _ChoiceUseImplementationInvertedValue {
  _$ChoiceUseImplementationInvertedValueImpl({final String? $type})
      : $type = $type ?? 'invertedValue';

  factory _$ChoiceUseImplementationInvertedValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoiceUseImplementationInvertedValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoiceUseImplementation.invertedValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceUseImplementationInvertedValueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
    required TResult Function() textValue,
  }) {
    return invertedValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
    TResult? Function()? textValue,
  }) {
    return invertedValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
    TResult Function()? textValue,
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
    required TResult Function(_ChoiceUseImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceUseImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_ChoiceUseImplementationTextValue value)
        textValue,
  }) {
    return invertedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult? Function(_ChoiceUseImplementationTextValue value)? textValue,
  }) {
    return invertedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult Function(_ChoiceUseImplementationTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceUseImplementationInvertedValueImplToJson(
      this,
    );
  }
}

abstract class _ChoiceUseImplementationInvertedValue
    implements ChoiceUseImplementation {
  factory _ChoiceUseImplementationInvertedValue() =
      _$ChoiceUseImplementationInvertedValueImpl;

  factory _ChoiceUseImplementationInvertedValue.fromJson(
          Map<String, dynamic> json) =
      _$ChoiceUseImplementationInvertedValueImpl.fromJson;
}

/// @nodoc
abstract class _$$ChoiceUseImplementationTextValueImplCopyWith<$Res> {
  factory _$$ChoiceUseImplementationTextValueImplCopyWith(
          _$ChoiceUseImplementationTextValueImpl value,
          $Res Function(_$ChoiceUseImplementationTextValueImpl) then) =
      __$$ChoiceUseImplementationTextValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoiceUseImplementationTextValueImplCopyWithImpl<$Res>
    extends _$ChoiceUseImplementationCopyWithImpl<$Res,
        _$ChoiceUseImplementationTextValueImpl>
    implements _$$ChoiceUseImplementationTextValueImplCopyWith<$Res> {
  __$$ChoiceUseImplementationTextValueImplCopyWithImpl(
      _$ChoiceUseImplementationTextValueImpl _value,
      $Res Function(_$ChoiceUseImplementationTextValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChoiceUseImplementation
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ChoiceUseImplementationTextValueImpl
    implements _ChoiceUseImplementationTextValue {
  _$ChoiceUseImplementationTextValueImpl({final String? $type})
      : $type = $type ?? 'textValue';

  factory _$ChoiceUseImplementationTextValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ChoiceUseImplementationTextValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ChoiceUseImplementation.textValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceUseImplementationTextValueImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normalValue,
    required TResult Function() invertedValue,
    required TResult Function() textValue,
  }) {
    return textValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normalValue,
    TResult? Function()? invertedValue,
    TResult? Function()? textValue,
  }) {
    return textValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normalValue,
    TResult Function()? invertedValue,
    TResult Function()? textValue,
    required TResult orElse(),
  }) {
    if (textValue != null) {
      return textValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChoiceUseImplementationNormalValue value)
        normalValue,
    required TResult Function(_ChoiceUseImplementationInvertedValue value)
        invertedValue,
    required TResult Function(_ChoiceUseImplementationTextValue value)
        textValue,
  }) {
    return textValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult? Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult? Function(_ChoiceUseImplementationTextValue value)? textValue,
  }) {
    return textValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChoiceUseImplementationNormalValue value)? normalValue,
    TResult Function(_ChoiceUseImplementationInvertedValue value)?
        invertedValue,
    TResult Function(_ChoiceUseImplementationTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (textValue != null) {
      return textValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceUseImplementationTextValueImplToJson(
      this,
    );
  }
}

abstract class _ChoiceUseImplementationTextValue
    implements ChoiceUseImplementation {
  factory _ChoiceUseImplementationTextValue() =
      _$ChoiceUseImplementationTextValueImpl;

  factory _ChoiceUseImplementationTextValue.fromJson(
          Map<String, dynamic> json) =
      _$ChoiceUseImplementationTextValueImpl.fromJson;
}
