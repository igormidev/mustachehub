// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'variable_scope_parent_mapper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VariableScopeParentMapper _$VariableScopeParentMapperFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'text':
      return TextTokenIdentifier.fromJson(json);
    case 'boolean':
      return BooleanTokenIdentifier.fromJson(json);
    case 'choice':
      return ChoiceTokenIdentifier.fromJson(json);
    case 'model':
      return ModelTokenIdentifier.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'VariableScopeParentMapper',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$VariableScopeParentMapper {
  String? get parrentName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(String? parrentName, String name) choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> subModelsNames)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ChoiceTokenIdentifier value) choice,
    required TResult Function(ModelTokenIdentifier value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ChoiceTokenIdentifier value)? choice,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ChoiceTokenIdentifier value)? choice,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this VariableScopeParentMapper to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VariableScopeParentMapperCopyWith<VariableScopeParentMapper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableScopeParentMapperCopyWith<$Res> {
  factory $VariableScopeParentMapperCopyWith(VariableScopeParentMapper value,
          $Res Function(VariableScopeParentMapper) then) =
      _$VariableScopeParentMapperCopyWithImpl<$Res, VariableScopeParentMapper>;
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class _$VariableScopeParentMapperCopyWithImpl<$Res,
        $Val extends VariableScopeParentMapper>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  _$VariableScopeParentMapperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VariableScopeParentMapper
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
abstract class _$$TextTokenIdentifierImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$TextTokenIdentifierImplCopyWith(_$TextTokenIdentifierImpl value,
          $Res Function(_$TextTokenIdentifierImpl) then) =
      __$$TextTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$TextTokenIdentifierImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$TextTokenIdentifierImpl>
    implements _$$TextTokenIdentifierImplCopyWith<$Res> {
  __$$TextTokenIdentifierImplCopyWithImpl(_$TextTokenIdentifierImpl _value,
      $Res Function(_$TextTokenIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$TextTokenIdentifierImpl(
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
class _$TextTokenIdentifierImpl implements TextTokenIdentifier {
  const _$TextTokenIdentifierImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'text';

  factory _$TextTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextTokenIdentifierImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableScopeParentMapper.text(parrentName: $parrentName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextTokenIdentifierImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextTokenIdentifierImplCopyWith<_$TextTokenIdentifierImpl> get copyWith =>
      __$$TextTokenIdentifierImplCopyWithImpl<_$TextTokenIdentifierImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(String? parrentName, String name) choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> subModelsNames)
        model,
  }) {
    return text(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return text?.call(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
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
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ChoiceTokenIdentifier value) choice,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ChoiceTokenIdentifier value)? choice,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ChoiceTokenIdentifier value)? choice,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class TextTokenIdentifier implements VariableScopeParentMapper {
  const factory TextTokenIdentifier(
      {required final String? parrentName,
      required final String name}) = _$TextTokenIdentifierImpl;

  factory TextTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$TextTokenIdentifierImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextTokenIdentifierImplCopyWith<_$TextTokenIdentifierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanTokenIdentifierImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$BooleanTokenIdentifierImplCopyWith(
          _$BooleanTokenIdentifierImpl value,
          $Res Function(_$BooleanTokenIdentifierImpl) then) =
      __$$BooleanTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$BooleanTokenIdentifierImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$BooleanTokenIdentifierImpl>
    implements _$$BooleanTokenIdentifierImplCopyWith<$Res> {
  __$$BooleanTokenIdentifierImplCopyWithImpl(
      _$BooleanTokenIdentifierImpl _value,
      $Res Function(_$BooleanTokenIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$BooleanTokenIdentifierImpl(
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
class _$BooleanTokenIdentifierImpl implements BooleanTokenIdentifier {
  const _$BooleanTokenIdentifierImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'boolean';

  factory _$BooleanTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanTokenIdentifierImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableScopeParentMapper.boolean(parrentName: $parrentName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooleanTokenIdentifierImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BooleanTokenIdentifierImplCopyWith<_$BooleanTokenIdentifierImpl>
      get copyWith => __$$BooleanTokenIdentifierImplCopyWithImpl<
          _$BooleanTokenIdentifierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(String? parrentName, String name) choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> subModelsNames)
        model,
  }) {
    return boolean(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return boolean?.call(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
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
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ChoiceTokenIdentifier value) choice,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ChoiceTokenIdentifier value)? choice,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ChoiceTokenIdentifier value)? choice,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class BooleanTokenIdentifier implements VariableScopeParentMapper {
  const factory BooleanTokenIdentifier(
      {required final String? parrentName,
      required final String name}) = _$BooleanTokenIdentifierImpl;

  factory BooleanTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$BooleanTokenIdentifierImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooleanTokenIdentifierImplCopyWith<_$BooleanTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoiceTokenIdentifierImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$ChoiceTokenIdentifierImplCopyWith(
          _$ChoiceTokenIdentifierImpl value,
          $Res Function(_$ChoiceTokenIdentifierImpl) then) =
      __$$ChoiceTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$ChoiceTokenIdentifierImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$ChoiceTokenIdentifierImpl>
    implements _$$ChoiceTokenIdentifierImplCopyWith<$Res> {
  __$$ChoiceTokenIdentifierImplCopyWithImpl(_$ChoiceTokenIdentifierImpl _value,
      $Res Function(_$ChoiceTokenIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$ChoiceTokenIdentifierImpl(
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
class _$ChoiceTokenIdentifierImpl implements ChoiceTokenIdentifier {
  const _$ChoiceTokenIdentifierImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'choice';

  factory _$ChoiceTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceTokenIdentifierImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableScopeParentMapper.choice(parrentName: $parrentName, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceTokenIdentifierImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, parrentName, name);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceTokenIdentifierImplCopyWith<_$ChoiceTokenIdentifierImpl>
      get copyWith => __$$ChoiceTokenIdentifierImplCopyWithImpl<
          _$ChoiceTokenIdentifierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(String? parrentName, String name) choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> subModelsNames)
        model,
  }) {
    return choice(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return choice?.call(parrentName, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(parrentName, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ChoiceTokenIdentifier value) choice,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ChoiceTokenIdentifier value)? choice,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ChoiceTokenIdentifier value)? choice,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class ChoiceTokenIdentifier implements VariableScopeParentMapper {
  const factory ChoiceTokenIdentifier(
      {required final String? parrentName,
      required final String name}) = _$ChoiceTokenIdentifierImpl;

  factory ChoiceTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$ChoiceTokenIdentifierImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceTokenIdentifierImplCopyWith<_$ChoiceTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelTokenIdentifierImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$ModelTokenIdentifierImplCopyWith(_$ModelTokenIdentifierImpl value,
          $Res Function(_$ModelTokenIdentifierImpl) then) =
      __$$ModelTokenIdentifierImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? parrentName,
      String name,
      List<String> textsNames,
      List<String> booleanNames,
      List<String> subModelsNames});
}

/// @nodoc
class __$$ModelTokenIdentifierImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$ModelTokenIdentifierImpl>
    implements _$$ModelTokenIdentifierImplCopyWith<$Res> {
  __$$ModelTokenIdentifierImplCopyWithImpl(_$ModelTokenIdentifierImpl _value,
      $Res Function(_$ModelTokenIdentifierImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
    Object? textsNames = null,
    Object? booleanNames = null,
    Object? subModelsNames = null,
  }) {
    return _then(_$ModelTokenIdentifierImpl(
      parrentName: freezed == parrentName
          ? _value.parrentName
          : parrentName // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      textsNames: null == textsNames
          ? _value._textsNames
          : textsNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      booleanNames: null == booleanNames
          ? _value._booleanNames
          : booleanNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
      subModelsNames: null == subModelsNames
          ? _value._subModelsNames
          : subModelsNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ModelTokenIdentifierImpl implements ModelTokenIdentifier {
  const _$ModelTokenIdentifierImpl(
      {required this.parrentName,
      required this.name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> subModelsNames,
      final String? $type})
      : _textsNames = textsNames,
        _booleanNames = booleanNames,
        _subModelsNames = subModelsNames,
        $type = $type ?? 'model';

  factory _$ModelTokenIdentifierImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelTokenIdentifierImplFromJson(json);

  @override
  final String? parrentName;
  @override
  final String name;
  final List<String> _textsNames;
  @override
  List<String> get textsNames {
    if (_textsNames is EqualUnmodifiableListView) return _textsNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_textsNames);
  }

  final List<String> _booleanNames;
  @override
  List<String> get booleanNames {
    if (_booleanNames is EqualUnmodifiableListView) return _booleanNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_booleanNames);
  }

  final List<String> _subModelsNames;
  @override
  List<String> get subModelsNames {
    if (_subModelsNames is EqualUnmodifiableListView) return _subModelsNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_subModelsNames);
  }

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'VariableScopeParentMapper.model(parrentName: $parrentName, name: $name, textsNames: $textsNames, booleanNames: $booleanNames, subModelsNames: $subModelsNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelTokenIdentifierImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._textsNames, _textsNames) &&
            const DeepCollectionEquality()
                .equals(other._booleanNames, _booleanNames) &&
            const DeepCollectionEquality()
                .equals(other._subModelsNames, _subModelsNames));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      parrentName,
      name,
      const DeepCollectionEquality().hash(_textsNames),
      const DeepCollectionEquality().hash(_booleanNames),
      const DeepCollectionEquality().hash(_subModelsNames));

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelTokenIdentifierImplCopyWith<_$ModelTokenIdentifierImpl>
      get copyWith =>
          __$$ModelTokenIdentifierImplCopyWithImpl<_$ModelTokenIdentifierImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? parrentName, String name) text,
    required TResult Function(String? parrentName, String name) boolean,
    required TResult Function(String? parrentName, String name) choice,
    required TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> subModelsNames)
        model,
  }) {
    return model(parrentName, name, textsNames, booleanNames, subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
  }) {
    return model?.call(
        parrentName, name, textsNames, booleanNames, subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(String? parrentName, String name, List<String> textsNames,
            List<String> booleanNames, List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(parrentName, name, textsNames, booleanNames, subModelsNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextTokenIdentifier value) text,
    required TResult Function(BooleanTokenIdentifier value) boolean,
    required TResult Function(ChoiceTokenIdentifier value) choice,
    required TResult Function(ModelTokenIdentifier value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextTokenIdentifier value)? text,
    TResult? Function(BooleanTokenIdentifier value)? boolean,
    TResult? Function(ChoiceTokenIdentifier value)? choice,
    TResult? Function(ModelTokenIdentifier value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextTokenIdentifier value)? text,
    TResult Function(BooleanTokenIdentifier value)? boolean,
    TResult Function(ChoiceTokenIdentifier value)? choice,
    TResult Function(ModelTokenIdentifier value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelTokenIdentifierImplToJson(
      this,
    );
  }
}

abstract class ModelTokenIdentifier implements VariableScopeParentMapper {
  const factory ModelTokenIdentifier(
      {required final String? parrentName,
      required final String name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> subModelsNames}) = _$ModelTokenIdentifierImpl;

  factory ModelTokenIdentifier.fromJson(Map<String, dynamic> json) =
      _$ModelTokenIdentifierImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;
  List<String> get textsNames;
  List<String> get booleanNames;
  List<String> get subModelsNames;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelTokenIdentifierImplCopyWith<_$ModelTokenIdentifierImpl>
      get copyWith => throw _privateConstructorUsedError;
}
