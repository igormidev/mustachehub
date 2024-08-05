// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'boolean_use_implementations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BooleanUseImplementation _$BooleanUseImplementationFromJson(
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
          'BooleanUseImplementation',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$BooleanUseImplementation {
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

  /// Serializes this BooleanUseImplementation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooleanUseImplementationCopyWith<$Res> {
  factory $BooleanUseImplementationCopyWith(BooleanUseImplementation value,
          $Res Function(BooleanUseImplementation) then) =
      _$BooleanUseImplementationCopyWithImpl<$Res, BooleanUseImplementation>;
}

/// @nodoc
class _$BooleanUseImplementationCopyWithImpl<$Res,
        $Val extends BooleanUseImplementation>
    implements $BooleanUseImplementationCopyWith<$Res> {
  _$BooleanUseImplementationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BooleanUseImplementation
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
    extends _$BooleanUseImplementationCopyWithImpl<$Res,
        _$BooleanImplementationInvertedValueImpl>
    implements _$$BooleanImplementationInvertedValueImplCopyWith<$Res> {
  __$$BooleanImplementationInvertedValueImplCopyWithImpl(
      _$BooleanImplementationInvertedValueImpl _value,
      $Res Function(_$BooleanImplementationInvertedValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooleanUseImplementation
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
    return 'BooleanUseImplementation.invertedValue()';
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
    implements BooleanUseImplementation {
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
    extends _$BooleanUseImplementationCopyWithImpl<$Res,
        _$BooleanImplementationNormalValueImpl>
    implements _$$BooleanImplementationNormalValueImplCopyWith<$Res> {
  __$$BooleanImplementationNormalValueImplCopyWithImpl(
      _$BooleanImplementationNormalValueImpl _value,
      $Res Function(_$BooleanImplementationNormalValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of BooleanUseImplementation
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
    return 'BooleanUseImplementation.normalValue()';
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
    implements BooleanUseImplementation {
  factory _BooleanImplementationNormalValue() =
      _$BooleanImplementationNormalValueImpl;

  factory _BooleanImplementationNormalValue.fromJson(
          Map<String, dynamic> json) =
      _$BooleanImplementationNormalValueImpl.fromJson;
}
