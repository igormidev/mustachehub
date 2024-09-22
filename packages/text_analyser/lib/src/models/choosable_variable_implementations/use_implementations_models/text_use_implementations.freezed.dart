// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_use_implementations.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TextUseImplementations _$TextUseImplementationsFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normalValue':
      return _TextUseImplementationsNormalValue.fromJson(json);
    case 'invertedValue':
      return _TextUseImplementationsInvertedValue.fromJson(json);
    case 'textValue':
      return _TextUseImplementationsTextValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'TextUseImplementations',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TextUseImplementations {
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
    required TResult Function(_TextUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_TextUseImplementationsInvertedValue value)
        invertedValue,
    required TResult Function(_TextUseImplementationsTextValue value) textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_TextUseImplementationsInvertedValue value)?
        invertedValue,
    TResult? Function(_TextUseImplementationsTextValue value)? textValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult Function(_TextUseImplementationsInvertedValue value)? invertedValue,
    TResult Function(_TextUseImplementationsTextValue value)? textValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TextUseImplementations to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextUseImplementationsCopyWith<$Res> {
  factory $TextUseImplementationsCopyWith(TextUseImplementations value,
          $Res Function(TextUseImplementations) then) =
      _$TextUseImplementationsCopyWithImpl<$Res, TextUseImplementations>;
}

/// @nodoc
class _$TextUseImplementationsCopyWithImpl<$Res,
        $Val extends TextUseImplementations>
    implements $TextUseImplementationsCopyWith<$Res> {
  _$TextUseImplementationsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TextUseImplementationsNormalValueImplCopyWith<$Res> {
  factory _$$TextUseImplementationsNormalValueImplCopyWith(
          _$TextUseImplementationsNormalValueImpl value,
          $Res Function(_$TextUseImplementationsNormalValueImpl) then) =
      __$$TextUseImplementationsNormalValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextUseImplementationsNormalValueImplCopyWithImpl<$Res>
    extends _$TextUseImplementationsCopyWithImpl<$Res,
        _$TextUseImplementationsNormalValueImpl>
    implements _$$TextUseImplementationsNormalValueImplCopyWith<$Res> {
  __$$TextUseImplementationsNormalValueImplCopyWithImpl(
      _$TextUseImplementationsNormalValueImpl _value,
      $Res Function(_$TextUseImplementationsNormalValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextUseImplementationsNormalValueImpl
    implements _TextUseImplementationsNormalValue {
  _$TextUseImplementationsNormalValueImpl({final String? $type})
      : $type = $type ?? 'normalValue';

  factory _$TextUseImplementationsNormalValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextUseImplementationsNormalValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextUseImplementations.normalValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextUseImplementationsNormalValueImpl);
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
    required TResult Function(_TextUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_TextUseImplementationsInvertedValue value)
        invertedValue,
    required TResult Function(_TextUseImplementationsTextValue value) textValue,
  }) {
    return normalValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_TextUseImplementationsInvertedValue value)?
        invertedValue,
    TResult? Function(_TextUseImplementationsTextValue value)? textValue,
  }) {
    return normalValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult Function(_TextUseImplementationsInvertedValue value)? invertedValue,
    TResult Function(_TextUseImplementationsTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (normalValue != null) {
      return normalValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextUseImplementationsNormalValueImplToJson(
      this,
    );
  }
}

abstract class _TextUseImplementationsNormalValue
    implements TextUseImplementations {
  factory _TextUseImplementationsNormalValue() =
      _$TextUseImplementationsNormalValueImpl;

  factory _TextUseImplementationsNormalValue.fromJson(
          Map<String, dynamic> json) =
      _$TextUseImplementationsNormalValueImpl.fromJson;
}

/// @nodoc
abstract class _$$TextUseImplementationsInvertedValueImplCopyWith<$Res> {
  factory _$$TextUseImplementationsInvertedValueImplCopyWith(
          _$TextUseImplementationsInvertedValueImpl value,
          $Res Function(_$TextUseImplementationsInvertedValueImpl) then) =
      __$$TextUseImplementationsInvertedValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextUseImplementationsInvertedValueImplCopyWithImpl<$Res>
    extends _$TextUseImplementationsCopyWithImpl<$Res,
        _$TextUseImplementationsInvertedValueImpl>
    implements _$$TextUseImplementationsInvertedValueImplCopyWith<$Res> {
  __$$TextUseImplementationsInvertedValueImplCopyWithImpl(
      _$TextUseImplementationsInvertedValueImpl _value,
      $Res Function(_$TextUseImplementationsInvertedValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextUseImplementationsInvertedValueImpl
    implements _TextUseImplementationsInvertedValue {
  _$TextUseImplementationsInvertedValueImpl({final String? $type})
      : $type = $type ?? 'invertedValue';

  factory _$TextUseImplementationsInvertedValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextUseImplementationsInvertedValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextUseImplementations.invertedValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextUseImplementationsInvertedValueImpl);
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
    required TResult Function(_TextUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_TextUseImplementationsInvertedValue value)
        invertedValue,
    required TResult Function(_TextUseImplementationsTextValue value) textValue,
  }) {
    return invertedValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_TextUseImplementationsInvertedValue value)?
        invertedValue,
    TResult? Function(_TextUseImplementationsTextValue value)? textValue,
  }) {
    return invertedValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult Function(_TextUseImplementationsInvertedValue value)? invertedValue,
    TResult Function(_TextUseImplementationsTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (invertedValue != null) {
      return invertedValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextUseImplementationsInvertedValueImplToJson(
      this,
    );
  }
}

abstract class _TextUseImplementationsInvertedValue
    implements TextUseImplementations {
  factory _TextUseImplementationsInvertedValue() =
      _$TextUseImplementationsInvertedValueImpl;

  factory _TextUseImplementationsInvertedValue.fromJson(
          Map<String, dynamic> json) =
      _$TextUseImplementationsInvertedValueImpl.fromJson;
}

/// @nodoc
abstract class _$$TextUseImplementationsTextValueImplCopyWith<$Res> {
  factory _$$TextUseImplementationsTextValueImplCopyWith(
          _$TextUseImplementationsTextValueImpl value,
          $Res Function(_$TextUseImplementationsTextValueImpl) then) =
      __$$TextUseImplementationsTextValueImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TextUseImplementationsTextValueImplCopyWithImpl<$Res>
    extends _$TextUseImplementationsCopyWithImpl<$Res,
        _$TextUseImplementationsTextValueImpl>
    implements _$$TextUseImplementationsTextValueImplCopyWith<$Res> {
  __$$TextUseImplementationsTextValueImplCopyWithImpl(
      _$TextUseImplementationsTextValueImpl _value,
      $Res Function(_$TextUseImplementationsTextValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextUseImplementations
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$TextUseImplementationsTextValueImpl
    implements _TextUseImplementationsTextValue {
  _$TextUseImplementationsTextValueImpl({final String? $type})
      : $type = $type ?? 'textValue';

  factory _$TextUseImplementationsTextValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TextUseImplementationsTextValueImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TextUseImplementations.textValue()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextUseImplementationsTextValueImpl);
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
    required TResult Function(_TextUseImplementationsNormalValue value)
        normalValue,
    required TResult Function(_TextUseImplementationsInvertedValue value)
        invertedValue,
    required TResult Function(_TextUseImplementationsTextValue value) textValue,
  }) {
    return textValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult? Function(_TextUseImplementationsInvertedValue value)?
        invertedValue,
    TResult? Function(_TextUseImplementationsTextValue value)? textValue,
  }) {
    return textValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TextUseImplementationsNormalValue value)? normalValue,
    TResult Function(_TextUseImplementationsInvertedValue value)? invertedValue,
    TResult Function(_TextUseImplementationsTextValue value)? textValue,
    required TResult orElse(),
  }) {
    if (textValue != null) {
      return textValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextUseImplementationsTextValueImplToJson(
      this,
    );
  }
}

abstract class _TextUseImplementationsTextValue
    implements TextUseImplementations {
  factory _TextUseImplementationsTextValue() =
      _$TextUseImplementationsTextValueImpl;

  factory _TextUseImplementationsTextValue.fromJson(Map<String, dynamic> json) =
      _$TextUseImplementationsTextValueImpl.fromJson;
}
