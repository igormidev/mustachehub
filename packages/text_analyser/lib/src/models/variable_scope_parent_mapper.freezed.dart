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
      return TextParentMapper.fromJson(json);
    case 'boolean':
      return BooleanParentMapper.fromJson(json);
    case 'choice':
      return ChoiceParentMapper.fromJson(json);
    case 'model':
      return ModelParentMapper.fromJson(json);

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
            List<String> choicesNames,
            List<String> subModelsNames)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextParentMapper value) text,
    required TResult Function(BooleanParentMapper value) boolean,
    required TResult Function(ChoiceParentMapper value) choice,
    required TResult Function(ModelParentMapper value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextParentMapper value)? text,
    TResult? Function(BooleanParentMapper value)? boolean,
    TResult? Function(ChoiceParentMapper value)? choice,
    TResult? Function(ModelParentMapper value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextParentMapper value)? text,
    TResult Function(BooleanParentMapper value)? boolean,
    TResult Function(ChoiceParentMapper value)? choice,
    TResult Function(ModelParentMapper value)? model,
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
abstract class _$$TextParentMapperImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$TextParentMapperImplCopyWith(_$TextParentMapperImpl value,
          $Res Function(_$TextParentMapperImpl) then) =
      __$$TextParentMapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$TextParentMapperImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$TextParentMapperImpl>
    implements _$$TextParentMapperImplCopyWith<$Res> {
  __$$TextParentMapperImplCopyWithImpl(_$TextParentMapperImpl _value,
      $Res Function(_$TextParentMapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$TextParentMapperImpl(
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
class _$TextParentMapperImpl implements TextParentMapper {
  const _$TextParentMapperImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'text';

  factory _$TextParentMapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$TextParentMapperImplFromJson(json);

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
            other is _$TextParentMapperImpl &&
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
  _$$TextParentMapperImplCopyWith<_$TextParentMapperImpl> get copyWith =>
      __$$TextParentMapperImplCopyWithImpl<_$TextParentMapperImpl>(
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
            List<String> choicesNames,
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
    TResult? Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    required TResult Function(TextParentMapper value) text,
    required TResult Function(BooleanParentMapper value) boolean,
    required TResult Function(ChoiceParentMapper value) choice,
    required TResult Function(ModelParentMapper value) model,
  }) {
    return text(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextParentMapper value)? text,
    TResult? Function(BooleanParentMapper value)? boolean,
    TResult? Function(ChoiceParentMapper value)? choice,
    TResult? Function(ModelParentMapper value)? model,
  }) {
    return text?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextParentMapper value)? text,
    TResult Function(BooleanParentMapper value)? boolean,
    TResult Function(ChoiceParentMapper value)? choice,
    TResult Function(ModelParentMapper value)? model,
    required TResult orElse(),
  }) {
    if (text != null) {
      return text(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TextParentMapperImplToJson(
      this,
    );
  }
}

abstract class TextParentMapper implements VariableScopeParentMapper {
  const factory TextParentMapper(
      {required final String? parrentName,
      required final String name}) = _$TextParentMapperImpl;

  factory TextParentMapper.fromJson(Map<String, dynamic> json) =
      _$TextParentMapperImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextParentMapperImplCopyWith<_$TextParentMapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BooleanParentMapperImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$BooleanParentMapperImplCopyWith(_$BooleanParentMapperImpl value,
          $Res Function(_$BooleanParentMapperImpl) then) =
      __$$BooleanParentMapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$BooleanParentMapperImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$BooleanParentMapperImpl>
    implements _$$BooleanParentMapperImplCopyWith<$Res> {
  __$$BooleanParentMapperImplCopyWithImpl(_$BooleanParentMapperImpl _value,
      $Res Function(_$BooleanParentMapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$BooleanParentMapperImpl(
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
class _$BooleanParentMapperImpl implements BooleanParentMapper {
  const _$BooleanParentMapperImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'boolean';

  factory _$BooleanParentMapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$BooleanParentMapperImplFromJson(json);

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
            other is _$BooleanParentMapperImpl &&
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
  _$$BooleanParentMapperImplCopyWith<_$BooleanParentMapperImpl> get copyWith =>
      __$$BooleanParentMapperImplCopyWithImpl<_$BooleanParentMapperImpl>(
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
            List<String> choicesNames,
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
    TResult? Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    required TResult Function(TextParentMapper value) text,
    required TResult Function(BooleanParentMapper value) boolean,
    required TResult Function(ChoiceParentMapper value) choice,
    required TResult Function(ModelParentMapper value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextParentMapper value)? text,
    TResult? Function(BooleanParentMapper value)? boolean,
    TResult? Function(ChoiceParentMapper value)? choice,
    TResult? Function(ModelParentMapper value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextParentMapper value)? text,
    TResult Function(BooleanParentMapper value)? boolean,
    TResult Function(ChoiceParentMapper value)? choice,
    TResult Function(ModelParentMapper value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BooleanParentMapperImplToJson(
      this,
    );
  }
}

abstract class BooleanParentMapper implements VariableScopeParentMapper {
  const factory BooleanParentMapper(
      {required final String? parrentName,
      required final String name}) = _$BooleanParentMapperImpl;

  factory BooleanParentMapper.fromJson(Map<String, dynamic> json) =
      _$BooleanParentMapperImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BooleanParentMapperImplCopyWith<_$BooleanParentMapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoiceParentMapperImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$ChoiceParentMapperImplCopyWith(_$ChoiceParentMapperImpl value,
          $Res Function(_$ChoiceParentMapperImpl) then) =
      __$$ChoiceParentMapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? parrentName, String name});
}

/// @nodoc
class __$$ChoiceParentMapperImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$ChoiceParentMapperImpl>
    implements _$$ChoiceParentMapperImplCopyWith<$Res> {
  __$$ChoiceParentMapperImplCopyWithImpl(_$ChoiceParentMapperImpl _value,
      $Res Function(_$ChoiceParentMapperImpl) _then)
      : super(_value, _then);

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parrentName = freezed,
    Object? name = null,
  }) {
    return _then(_$ChoiceParentMapperImpl(
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
class _$ChoiceParentMapperImpl implements ChoiceParentMapper {
  const _$ChoiceParentMapperImpl(
      {required this.parrentName, required this.name, final String? $type})
      : $type = $type ?? 'choice';

  factory _$ChoiceParentMapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceParentMapperImplFromJson(json);

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
            other is _$ChoiceParentMapperImpl &&
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
  _$$ChoiceParentMapperImplCopyWith<_$ChoiceParentMapperImpl> get copyWith =>
      __$$ChoiceParentMapperImplCopyWithImpl<_$ChoiceParentMapperImpl>(
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
            List<String> choicesNames,
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
    TResult? Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
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
    required TResult Function(TextParentMapper value) text,
    required TResult Function(BooleanParentMapper value) boolean,
    required TResult Function(ChoiceParentMapper value) choice,
    required TResult Function(ModelParentMapper value) model,
  }) {
    return choice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextParentMapper value)? text,
    TResult? Function(BooleanParentMapper value)? boolean,
    TResult? Function(ChoiceParentMapper value)? choice,
    TResult? Function(ModelParentMapper value)? model,
  }) {
    return choice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextParentMapper value)? text,
    TResult Function(BooleanParentMapper value)? boolean,
    TResult Function(ChoiceParentMapper value)? choice,
    TResult Function(ModelParentMapper value)? model,
    required TResult orElse(),
  }) {
    if (choice != null) {
      return choice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceParentMapperImplToJson(
      this,
    );
  }
}

abstract class ChoiceParentMapper implements VariableScopeParentMapper {
  const factory ChoiceParentMapper(
      {required final String? parrentName,
      required final String name}) = _$ChoiceParentMapperImpl;

  factory ChoiceParentMapper.fromJson(Map<String, dynamic> json) =
      _$ChoiceParentMapperImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChoiceParentMapperImplCopyWith<_$ChoiceParentMapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ModelParentMapperImplCopyWith<$Res>
    implements $VariableScopeParentMapperCopyWith<$Res> {
  factory _$$ModelParentMapperImplCopyWith(_$ModelParentMapperImpl value,
          $Res Function(_$ModelParentMapperImpl) then) =
      __$$ModelParentMapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? parrentName,
      String name,
      List<String> textsNames,
      List<String> booleanNames,
      List<String> choicesNames,
      List<String> subModelsNames});
}

/// @nodoc
class __$$ModelParentMapperImplCopyWithImpl<$Res>
    extends _$VariableScopeParentMapperCopyWithImpl<$Res,
        _$ModelParentMapperImpl>
    implements _$$ModelParentMapperImplCopyWith<$Res> {
  __$$ModelParentMapperImplCopyWithImpl(_$ModelParentMapperImpl _value,
      $Res Function(_$ModelParentMapperImpl) _then)
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
    Object? choicesNames = null,
    Object? subModelsNames = null,
  }) {
    return _then(_$ModelParentMapperImpl(
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
      choicesNames: null == choicesNames
          ? _value._choicesNames
          : choicesNames // ignore: cast_nullable_to_non_nullable
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
class _$ModelParentMapperImpl implements ModelParentMapper {
  const _$ModelParentMapperImpl(
      {required this.parrentName,
      required this.name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> choicesNames,
      required final List<String> subModelsNames,
      final String? $type})
      : _textsNames = textsNames,
        _booleanNames = booleanNames,
        _choicesNames = choicesNames,
        _subModelsNames = subModelsNames,
        $type = $type ?? 'model';

  factory _$ModelParentMapperImpl.fromJson(Map<String, dynamic> json) =>
      _$$ModelParentMapperImplFromJson(json);

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

  final List<String> _choicesNames;
  @override
  List<String> get choicesNames {
    if (_choicesNames is EqualUnmodifiableListView) return _choicesNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choicesNames);
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
    return 'VariableScopeParentMapper.model(parrentName: $parrentName, name: $name, textsNames: $textsNames, booleanNames: $booleanNames, choicesNames: $choicesNames, subModelsNames: $subModelsNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ModelParentMapperImpl &&
            (identical(other.parrentName, parrentName) ||
                other.parrentName == parrentName) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._textsNames, _textsNames) &&
            const DeepCollectionEquality()
                .equals(other._booleanNames, _booleanNames) &&
            const DeepCollectionEquality()
                .equals(other._choicesNames, _choicesNames) &&
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
      const DeepCollectionEquality().hash(_choicesNames),
      const DeepCollectionEquality().hash(_subModelsNames));

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ModelParentMapperImplCopyWith<_$ModelParentMapperImpl> get copyWith =>
      __$$ModelParentMapperImplCopyWithImpl<_$ModelParentMapperImpl>(
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
            List<String> choicesNames,
            List<String> subModelsNames)
        model,
  }) {
    return model(parrentName, name, textsNames, booleanNames, choicesNames,
        subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? parrentName, String name)? text,
    TResult? Function(String? parrentName, String name)? boolean,
    TResult? Function(String? parrentName, String name)? choice,
    TResult? Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
        model,
  }) {
    return model?.call(parrentName, name, textsNames, booleanNames,
        choicesNames, subModelsNames);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? parrentName, String name)? text,
    TResult Function(String? parrentName, String name)? boolean,
    TResult Function(String? parrentName, String name)? choice,
    TResult Function(
            String? parrentName,
            String name,
            List<String> textsNames,
            List<String> booleanNames,
            List<String> choicesNames,
            List<String> subModelsNames)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(parrentName, name, textsNames, booleanNames, choicesNames,
          subModelsNames);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TextParentMapper value) text,
    required TResult Function(BooleanParentMapper value) boolean,
    required TResult Function(ChoiceParentMapper value) choice,
    required TResult Function(ModelParentMapper value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TextParentMapper value)? text,
    TResult? Function(BooleanParentMapper value)? boolean,
    TResult? Function(ChoiceParentMapper value)? choice,
    TResult? Function(ModelParentMapper value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TextParentMapper value)? text,
    TResult Function(BooleanParentMapper value)? boolean,
    TResult Function(ChoiceParentMapper value)? choice,
    TResult Function(ModelParentMapper value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ModelParentMapperImplToJson(
      this,
    );
  }
}

abstract class ModelParentMapper implements VariableScopeParentMapper {
  const factory ModelParentMapper(
      {required final String? parrentName,
      required final String name,
      required final List<String> textsNames,
      required final List<String> booleanNames,
      required final List<String> choicesNames,
      required final List<String> subModelsNames}) = _$ModelParentMapperImpl;

  factory ModelParentMapper.fromJson(Map<String, dynamic> json) =
      _$ModelParentMapperImpl.fromJson;

  @override
  String? get parrentName;
  @override
  String get name;
  List<String> get textsNames;
  List<String> get booleanNames;
  List<String> get choicesNames;
  List<String> get subModelsNames;

  /// Create a copy of VariableScopeParentMapper
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ModelParentMapperImplCopyWith<_$ModelParentMapperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
