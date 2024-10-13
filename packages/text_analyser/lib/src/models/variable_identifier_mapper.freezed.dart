// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_identifier_mapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VariableIdentifierMapper _$VariableIdentifierMapperFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return VariableIdentifierMapperText.fromJson(json);
    case 'boolean':
      return VariableIdentifierMapperBoolean.fromJson(json);
    case 'choice':
      return VariableIdentifierMapperChoice.fromJson(json);
    case 'model':
      return VariableIdentifierMapperModel.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'VariableIdentifierMapper',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VariableIdentifierMapper {
  String? get parrentName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(
            String? parrentName, String name, List<String> options)
        choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableIdentifierMapperText value) text,
    required TResult Function(VariableIdentifierMapperBoolean value) boolean,
    required TResult Function(VariableIdentifierMapperChoice value) choice,
    required TResult Function(VariableIdentifierMapperModel value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableIdentifierMapperText value)? text,
    TResult? Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult? Function(VariableIdentifierMapperChoice value)? choice,
    TResult? Function(VariableIdentifierMapperModel value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableIdentifierMapperText value)? text,
    TResult Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult Function(VariableIdentifierMapperChoice value)? choice,
    TResult Function(VariableIdentifierMapperModel value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VariableIdentifierMapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariableIdentifierMapperCopyWith<VariableIdentifierMapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableIdentifierMapperCopyWith<$Res> {
  factory $VariableIdentifierMapperCopyWith(VariableIdentifierMapper value,
          $Res Function(VariableIdentifierMapper) then) =
      _$VariableIdentifierMapperCopyWithImpl<$Res, VariableIdentifierMapper>;
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class _$VariableIdentifierMapperCopyWithImpl<$Res,
        $Val extends VariableIdentifierMapper>
    implements $VariableIdentifierMapperCopyWith<$Res> {
  _$VariableIdentifierMapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VariableIdentifierMapperTextImplCopyWith<$Res>
    implements $VariableIdentifierMapperCopyWith<$Res> {
  factory _$$VariableIdentifierMapperTextImplCopyWith(
          _$VariableIdentifierMapperTextImpl value,
          $Res Function(_$VariableIdentifierMapperTextImpl) then) =
      __$$VariableIdentifierMapperTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$VariableIdentifierMapperTextImplCopyWithImpl<$Res>
    extends _$VariableIdentifierMapperCopyWithImpl<$Res,
        _$VariableIdentifierMapperTextImpl>
    implements _$$VariableIdentifierMapperTextImplCopyWith<$Res> {
  __$$VariableIdentifierMapperTextImplCopyWithImpl(
      _$VariableIdentifierMapperTextImpl _value,
      $Res Function(_$VariableIdentifierMapperTextImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$VariableIdentifierMapperTextImpl(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableIdentifierMapperTextImpl
    implements VariableIdentifierMapperText {
  _$VariableIdentifierMapperTextImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'text';

  factory _$VariableIdentifierMapperTextImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableIdentifierMapperTextImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableIdentifierMapper.text(parrentName: $parrentName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableIdentifierMapperTextImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableIdentifierMapperTextImplCopyWith<
          _$VariableIdentifierMapperTextImpl>
      get copyWith => __$$VariableIdentifierMapperTextImplCopyWithImpl<
          _$VariableIdentifierMapperTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(
            String? parrentName, String name, List<String> options)
        choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)
        model,
  }) {
    return text(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
  }) {
    return text?.call(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(parrentName, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableIdentifierMapperText value) text,
    required TResult Function(VariableIdentifierMapperBoolean value) boolean,
    required TResult Function(VariableIdentifierMapperChoice value) choice,
    required TResult Function(VariableIdentifierMapperModel value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableIdentifierMapperText value)? text,
    TResult? Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult? Function(VariableIdentifierMapperChoice value)? choice,
    TResult? Function(VariableIdentifierMapperModel value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableIdentifierMapperText value)? text,
    TResult Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult Function(VariableIdentifierMapperChoice value)? choice,
    TResult Function(VariableIdentifierMapperModel value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableIdentifierMapperTextImplToJson(
      this,
    );
  }
}

abstract class VariableIdentifierMapperText
    implements VariableIdentifierMapper {
  factory VariableIdentifierMapperText(
      {required final String? parrentName,
      required final String name}) = _$VariableIdentifierMapperTextImpl;

  factory VariableIdentifierMapperText.fromJson(Map<String, dynamic> json) =
      _$VariableIdentifierMapperTextImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableIdentifierMapperTextImplCopyWith<
          _$VariableIdentifierMapperTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableIdentifierMapperBooleanImplCopyWith<$Res>
    implements $VariableIdentifierMapperCopyWith<$Res> {
  factory _$$VariableIdentifierMapperBooleanImplCopyWith(
          _$VariableIdentifierMapperBooleanImpl value,
          $Res Function(_$VariableIdentifierMapperBooleanImpl) then) =
      __$$VariableIdentifierMapperBooleanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$VariableIdentifierMapperBooleanImplCopyWithImpl<$Res>
    extends _$VariableIdentifierMapperCopyWithImpl<$Res,
        _$VariableIdentifierMapperBooleanImpl>
    implements _$$VariableIdentifierMapperBooleanImplCopyWith<$Res> {
  __$$VariableIdentifierMapperBooleanImplCopyWithImpl(
      _$VariableIdentifierMapperBooleanImpl _value,
      $Res Function(_$VariableIdentifierMapperBooleanImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$VariableIdentifierMapperBooleanImpl(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableIdentifierMapperBooleanImpl
    implements VariableIdentifierMapperBoolean {
  _$VariableIdentifierMapperBooleanImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'boolean';

  factory _$VariableIdentifierMapperBooleanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableIdentifierMapperBooleanImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableIdentifierMapper.boolean(parrentName: $parrentName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableIdentifierMapperBooleanImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableIdentifierMapperBooleanImplCopyWith<
          _$VariableIdentifierMapperBooleanImpl>
      get copyWith => __$$VariableIdentifierMapperBooleanImplCopyWithImpl<
          _$VariableIdentifierMapperBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(
            String? parrentName, String name, List<String> options)
        choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)
        model,
  }) {
    return boolean(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
  }) {
    return boolean?.call(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(parrentName, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableIdentifierMapperText value) text,
    required TResult Function(VariableIdentifierMapperBoolean value) boolean,
    required TResult Function(VariableIdentifierMapperChoice value) choice,
    required TResult Function(VariableIdentifierMapperModel value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableIdentifierMapperText value)? text,
    TResult? Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult? Function(VariableIdentifierMapperChoice value)? choice,
    TResult? Function(VariableIdentifierMapperModel value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableIdentifierMapperText value)? text,
    TResult Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult Function(VariableIdentifierMapperChoice value)? choice,
    TResult Function(VariableIdentifierMapperModel value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableIdentifierMapperBooleanImplToJson(
      this,
    );
  }
}

abstract class VariableIdentifierMapperBoolean
    implements VariableIdentifierMapper {
  factory VariableIdentifierMapperBoolean(
      {required final String? parrentName,
      required final String name}) = _$VariableIdentifierMapperBooleanImpl;

  factory VariableIdentifierMapperBoolean.fromJson(Map<String, dynamic> json) =
      _$VariableIdentifierMapperBooleanImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableIdentifierMapperBooleanImplCopyWith<
          _$VariableIdentifierMapperBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableIdentifierMapperChoiceImplCopyWith<$Res>
    implements $VariableIdentifierMapperCopyWith<$Res> {
  factory _$$VariableIdentifierMapperChoiceImplCopyWith(
          _$VariableIdentifierMapperChoiceImpl value,
          $Res Function(_$VariableIdentifierMapperChoiceImpl) then) =
      __$$VariableIdentifierMapperChoiceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name, List<String> options});
}

/// @nodoc
class __$$VariableIdentifierMapperChoiceImplCopyWithImpl<$Res>
    extends _$VariableIdentifierMapperCopyWithImpl<$Res,
        _$VariableIdentifierMapperChoiceImpl>
    implements _$$VariableIdentifierMapperChoiceImplCopyWith<$Res> {
  __$$VariableIdentifierMapperChoiceImplCopyWithImpl(
      _$VariableIdentifierMapperChoiceImpl _value,
      $Res Function(_$VariableIdentifierMapperChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
    Object? options = null,
  }) {
    return _then(_$VariableIdentifierMapperChoiceImpl(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableIdentifierMapperChoiceImpl
    implements VariableIdentifierMapperChoice {
  _$VariableIdentifierMapperChoiceImpl(
      {required this.parrentName,
      required this.name,
      required final List<String> options,
      final String? $type})
      : _options = options,
        $type = $type ?? 'choice';

  factory _$VariableIdentifierMapperChoiceImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableIdentifierMapperChoiceImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;
  final List<String> _options;
  @override
  List<String> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableIdentifierMapper.choice(parrentName: $parrentName, name: $name, options: $options)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableIdentifierMapperChoiceImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name,
      const DeepCollectionEquality().hash(_options));

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableIdentifierMapperChoiceImplCopyWith<
          _$VariableIdentifierMapperChoiceImpl>
      get copyWith => __$$VariableIdentifierMapperChoiceImplCopyWithImpl<
          _$VariableIdentifierMapperChoiceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(
            String? parrentName, String name, List<String> options)
        choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)
        model,
  }) {
    return choice(parrentName, name, options);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
  }) {
    return choice?.call(parrentName, name, options);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(parrentName, name, options);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableIdentifierMapperText value) text,
    required TResult Function(VariableIdentifierMapperBoolean value) boolean,
    required TResult Function(VariableIdentifierMapperChoice value) choice,
    required TResult Function(VariableIdentifierMapperModel value) model,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableIdentifierMapperText value)? text,
    TResult? Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult? Function(VariableIdentifierMapperChoice value)? choice,
    TResult? Function(VariableIdentifierMapperModel value)? model,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableIdentifierMapperText value)? text,
    TResult Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult Function(VariableIdentifierMapperChoice value)? choice,
    TResult Function(VariableIdentifierMapperModel value)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableIdentifierMapperChoiceImplToJson(
      this,
    );
  }
}

abstract class VariableIdentifierMapperChoice
    implements VariableIdentifierMapper {
  factory VariableIdentifierMapperChoice(
          {required final String? parrentName,
          required final String name,
          required final List<String> options}) =
      _$VariableIdentifierMapperChoiceImpl;

  factory VariableIdentifierMapperChoice.fromJson(Map<String, dynamic> json) =
      _$VariableIdentifierMapperChoiceImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;
  List<String> get options;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableIdentifierMapperChoiceImplCopyWith<
          _$VariableIdentifierMapperChoiceImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableIdentifierMapperModelImplCopyWith<$Res>
    implements $VariableIdentifierMapperCopyWith<$Res> {
  factory _$$VariableIdentifierMapperModelImplCopyWith(
          _$VariableIdentifierMapperModelImpl value,
          $Res Function(_$VariableIdentifierMapperModelImpl) then) =
      __$$VariableIdentifierMapperModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? parrentName,
      String name,
      List<VariableIdentifierMapperText> textsChildren,
      List<VariableIdentifierMapperBoolean> booleansChildren,
      List<VariableIdentifierMapperChoice> choicesChildren,
      List<VariableIdentifierMapperModel> subModelsChildren});
}

/// @nodoc
class __$$VariableIdentifierMapperModelImplCopyWithImpl<$Res>
    extends _$VariableIdentifierMapperCopyWithImpl<$Res,
        _$VariableIdentifierMapperModelImpl>
    implements _$$VariableIdentifierMapperModelImplCopyWith<$Res> {
  __$$VariableIdentifierMapperModelImplCopyWithImpl(
      _$VariableIdentifierMapperModelImpl _value,
      $Res Function(_$VariableIdentifierMapperModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
    Object? textsChildren = null,
    Object? booleansChildren = null,
    Object? choicesChildren = null,
    Object? subModelsChildren = null,
  }) {
    return _then(_$VariableIdentifierMapperModelImpl(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textsChildren: null == textsChildren
          ? _value._textsChildren
          : textsChildren // ignore: cast_nullable_to_non_nullable
              as List<VariableIdentifierMapperText>,
      booleansChildren: null == booleansChildren
          ? _value._booleansChildren
          : booleansChildren // ignore: cast_nullable_to_non_nullable
              as List<VariableIdentifierMapperBoolean>,
      choicesChildren: null == choicesChildren
          ? _value._choicesChildren
          : choicesChildren // ignore: cast_nullable_to_non_nullable
              as List<VariableIdentifierMapperChoice>,
      subModelsChildren: null == subModelsChildren
          ? _value._subModelsChildren
          : subModelsChildren // ignore: cast_nullable_to_non_nullable
              as List<VariableIdentifierMapperModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VariableIdentifierMapperModelImpl
    implements VariableIdentifierMapperModel {
  _$VariableIdentifierMapperModelImpl(
      {required this.parrentName,
      required this.name,
      required final List<VariableIdentifierMapperText> textsChildren,
      required final List<VariableIdentifierMapperBoolean> booleansChildren,
      required final List<VariableIdentifierMapperChoice> choicesChildren,
      required final List<VariableIdentifierMapperModel> subModelsChildren,
      final String? $type})
      : _textsChildren = textsChildren,
        _booleansChildren = booleansChildren,
        _choicesChildren = choicesChildren,
        _subModelsChildren = subModelsChildren,
        $type = $type ?? 'model';

  factory _$VariableIdentifierMapperModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$VariableIdentifierMapperModelImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;
  final List<VariableIdentifierMapperText> _textsChildren;
  @override
  List<VariableIdentifierMapperText> get textsChildren {
    if (_textsChildren is EqualUnmodifiableListView) return _textsChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textsChildren);
  }

  final List<VariableIdentifierMapperBoolean> _booleansChildren;
  @override
  List<VariableIdentifierMapperBoolean> get booleansChildren {
    if (_booleansChildren is EqualUnmodifiableListView)
      return _booleansChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleansChildren);
  }

  final List<VariableIdentifierMapperChoice> _choicesChildren;
  @override
  List<VariableIdentifierMapperChoice> get choicesChildren {
    if (_choicesChildren is EqualUnmodifiableListView) return _choicesChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choicesChildren);
  }

  final List<VariableIdentifierMapperModel> _subModelsChildren;
  @override
  List<VariableIdentifierMapperModel> get subModelsChildren {
    if (_subModelsChildren is EqualUnmodifiableListView)
      return _subModelsChildren;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subModelsChildren);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableIdentifierMapper.model(parrentName: $parrentName, name: $name, textsChildren: $textsChildren, booleansChildren: $booleansChildren, choicesChildren: $choicesChildren, subModelsChildren: $subModelsChildren)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableIdentifierMapperModelImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._textsChildren, _textsChildren) &&
            const DeepCollectionEquality()
                .equals(other._booleansChildren, _booleansChildren) &&
            const DeepCollectionEquality()
                .equals(other._choicesChildren, _choicesChildren) &&
            const DeepCollectionEquality()
                .equals(other._subModelsChildren, _subModelsChildren));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parrentName,
      name,
      const DeepCollectionEquality().hash(_textsChildren),
      const DeepCollectionEquality().hash(_booleansChildren),
      const DeepCollectionEquality().hash(_choicesChildren),
      const DeepCollectionEquality().hash(_subModelsChildren));

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VariableIdentifierMapperModelImplCopyWith<
          _$VariableIdentifierMapperModelImpl>
      get copyWith => __$$VariableIdentifierMapperModelImplCopyWithImpl<
          _$VariableIdentifierMapperModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(
            String? parrentName, String name, List<String> options)
        choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)
        model,
  }) {
    return model(parrentName, name, textsChildren, booleansChildren,
        choicesChildren, subModelsChildren);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
  }) {
    return model?.call(parrentName, name, textsChildren, booleansChildren,
        choicesChildren, subModelsChildren);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name, List<String> options)?
        choice,
    TResult Function(
            String? parrentName,
            String name,
            List<VariableIdentifierMapperText> textsChildren,
            List<VariableIdentifierMapperBoolean> booleansChildren,
            List<VariableIdentifierMapperChoice> choicesChildren,
            List<VariableIdentifierMapperModel> subModelsChildren)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(parrentName, name, textsChildren, booleansChildren,
          choicesChildren, subModelsChildren);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VariableIdentifierMapperText value) text,
    required TResult Function(VariableIdentifierMapperBoolean value) boolean,
    required TResult Function(VariableIdentifierMapperChoice value) choice,
    required TResult Function(VariableIdentifierMapperModel value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VariableIdentifierMapperText value)? text,
    TResult? Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult? Function(VariableIdentifierMapperChoice value)? choice,
    TResult? Function(VariableIdentifierMapperModel value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VariableIdentifierMapperText value)? text,
    TResult Function(VariableIdentifierMapperBoolean value)? boolean,
    TResult Function(VariableIdentifierMapperChoice value)? choice,
    TResult Function(VariableIdentifierMapperModel value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$VariableIdentifierMapperModelImplToJson(
      this,
    );
  }
}

abstract class VariableIdentifierMapperModel
    implements VariableIdentifierMapper {
  factory VariableIdentifierMapperModel(
      {required final String? parrentName,
      required final String name,
      required final List<VariableIdentifierMapperText> textsChildren,
      required final List<VariableIdentifierMapperBoolean> booleansChildren,
      required final List<VariableIdentifierMapperChoice> choicesChildren,
      required final List<VariableIdentifierMapperModel>
          subModelsChildren}) = _$VariableIdentifierMapperModelImpl;

  factory VariableIdentifierMapperModel.fromJson(Map<String, dynamic> json) =
      _$VariableIdentifierMapperModelImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;
  List<VariableIdentifierMapperText> get textsChildren;
  List<VariableIdentifierMapperBoolean> get booleansChildren;
  List<VariableIdentifierMapperChoice> get choicesChildren;
  List<VariableIdentifierMapperModel> get subModelsChildren;

  /// Create a copy of VariableIdentifierMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VariableIdentifierMapperModelImplCopyWith<
          _$VariableIdentifierMapperModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
