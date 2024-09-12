// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model_use_implementations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ModelUseImplementations _$ModelUseImplementationsFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normalValue':
      return _ModelUseImplementationsNormalValue.fromJson(json);
    case 'invertedValue':
      return _ModelUseImplementationsInvertedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ModelUseImplementations',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ModelUseImplementations {
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
    required TResult Function(_ModelUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_ModelUseImplementationsInvertedValue value)
        invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ModelUseImplementations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModelUseImplementationsCopyWith<$Res> {
  factory $ModelUseImplementationsCopyWith(ModelUseImplementations value,
          $Res Function(ModelUseImplementations) then) =
      _$ModelUseImplementationsCopyWithImpl<$Res, ModelUseImplementations>;
}

/// @nodoc
class _$ModelUseImplementationsCopyWithImpl<$Res,
        $Val extends ModelUseImplementations>
    implements $ModelUseImplementationsCopyWith<$Res> {
  _$ModelUseImplementationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ModelUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ModelUseImplementationsNormalValueImplCopyWith<$Res> {
  factory _$$ModelUseImplementationsNormalValueImplCopyWith(
          _$ModelUseImplementationsNormalValueImpl value,
          $Res Function(_$ModelUseImplementationsNormalValueImpl) then) =
      __$$ModelUseImplementationsNormalValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModelUseImplementationsNormalValueImplCopyWithImpl<$Res>
    extends _$ModelUseImplementationsCopyWithImpl<$Res,
        _$ModelUseImplementationsNormalValueImpl>
    implements _$$ModelUseImplementationsNormalValueImplCopyWith<$Res> {
  __$$ModelUseImplementationsNormalValueImplCopyWithImpl(
      _$ModelUseImplementationsNormalValueImpl _value,
      $Res Function(_$ModelUseImplementationsNormalValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ModelUseImplementationsNormalValueImpl
    implements _ModelUseImplementationsNormalValue {
  _$ModelUseImplementationsNormalValueImpl({final String? $type})
      : $type = $type ?? 'normalValue';

  factory _$ModelUseImplementationsNormalValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModelUseImplementationsNormalValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ModelUseImplementations.normalValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelUseImplementationsNormalValueImpl);
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
    required TResult Function(_ModelUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_ModelUseImplementationsInvertedValue value)
        invertedValue,
  }) {
    return normalValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
  }) {
    return normalValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelUseImplementationsNormalValueImplToJson(
      this,
    );
  }
}

abstract class _ModelUseImplementationsNormalValue
    implements ModelUseImplementations {
  factory _ModelUseImplementationsNormalValue() =
      _$ModelUseImplementationsNormalValueImpl;

  factory _ModelUseImplementationsNormalValue.fromJson(
          Map<String, dynamic> json) =
      _$ModelUseImplementationsNormalValueImpl.fromJson;
}

/// @nodoc
abstract class _$$ModelUseImplementationsInvertedValueImplCopyWith<$Res> {
  factory _$$ModelUseImplementationsInvertedValueImplCopyWith(
          _$ModelUseImplementationsInvertedValueImpl value,
          $Res Function(_$ModelUseImplementationsInvertedValueImpl) then) =
      __$$ModelUseImplementationsInvertedValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ModelUseImplementationsInvertedValueImplCopyWithImpl<$Res>
    extends _$ModelUseImplementationsCopyWithImpl<$Res,
        _$ModelUseImplementationsInvertedValueImpl>
    implements _$$ModelUseImplementationsInvertedValueImplCopyWith<$Res> {
  __$$ModelUseImplementationsInvertedValueImplCopyWithImpl(
      _$ModelUseImplementationsInvertedValueImpl _value,
      $Res Function(_$ModelUseImplementationsInvertedValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of ModelUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$ModelUseImplementationsInvertedValueImpl
    implements _ModelUseImplementationsInvertedValue {
  _$ModelUseImplementationsInvertedValueImpl({final String? $type})
      : $type = $type ?? 'invertedValue';

  factory _$ModelUseImplementationsInvertedValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$ModelUseImplementationsInvertedValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ModelUseImplementations.invertedValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelUseImplementationsInvertedValueImpl);
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
    required TResult Function(_ModelUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_ModelUseImplementationsInvertedValue value)
        invertedValue,
  }) {
    return invertedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
  }) {
    return invertedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ModelUseImplementationsNormalValue value)? normalValue,
    TResult Function(_ModelUseImplementationsInvertedValue value)?
        invertedValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelUseImplementationsInvertedValueImplToJson(
      this,
    );
  }
}

abstract class _ModelUseImplementationsInvertedValue
    implements ModelUseImplementations {
  factory _ModelUseImplementationsInvertedValue() =
      _$ModelUseImplementationsInvertedValueImpl;

  factory _ModelUseImplementationsInvertedValue.fromJson(
          Map<String, dynamic> json) =
      _$ModelUseImplementationsInvertedValueImpl.fromJson;
}
