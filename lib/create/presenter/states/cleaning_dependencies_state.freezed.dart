// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cleaning_dependencies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CleaningDependenciesState _$CleaningDependenciesStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normal':
      return _CleaningDependenciesStateNormal.fromJson(json);
    case 'cleaningDependencies':
      return _CleaningDependenciesStateCleaningDependenciesLoading.fromJson(
          json);
    case 'endClean':
      return _CleaningDependenciesStateEndClean.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'CleaningDependenciesState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CleaningDependenciesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() cleaningDependencies,
    required TResult Function() endClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? cleaningDependencies,
    TResult? Function()? endClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? cleaningDependencies,
    TResult Function()? endClean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CleaningDependenciesStateNormal value) normal,
    required TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)
        cleaningDependencies,
    required TResult Function(_CleaningDependenciesStateEndClean value)
        endClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CleaningDependenciesStateNormal value)? normal,
    TResult? Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult? Function(_CleaningDependenciesStateEndClean value)? endClean,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CleaningDependenciesStateNormal value)? normal,
    TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult Function(_CleaningDependenciesStateEndClean value)? endClean,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CleaningDependenciesStateCopyWith<$Res> {
  factory $CleaningDependenciesStateCopyWith(CleaningDependenciesState value,
          $Res Function(CleaningDependenciesState) then) =
      _$CleaningDependenciesStateCopyWithImpl<$Res, CleaningDependenciesState>;
}

/// @nodoc
class _$CleaningDependenciesStateCopyWithImpl<$Res,
        $Val extends CleaningDependenciesState>
    implements $CleaningDependenciesStateCopyWith<$Res> {
  _$CleaningDependenciesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CleaningDependenciesStateNormalImplCopyWith<$Res> {
  factory _$$CleaningDependenciesStateNormalImplCopyWith(
          _$CleaningDependenciesStateNormalImpl value,
          $Res Function(_$CleaningDependenciesStateNormalImpl) then) =
      __$$CleaningDependenciesStateNormalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleaningDependenciesStateNormalImplCopyWithImpl<$Res>
    extends _$CleaningDependenciesStateCopyWithImpl<$Res,
        _$CleaningDependenciesStateNormalImpl>
    implements _$$CleaningDependenciesStateNormalImplCopyWith<$Res> {
  __$$CleaningDependenciesStateNormalImplCopyWithImpl(
      _$CleaningDependenciesStateNormalImpl _value,
      $Res Function(_$CleaningDependenciesStateNormalImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CleaningDependenciesStateNormalImpl
    implements _CleaningDependenciesStateNormal {
  _$CleaningDependenciesStateNormalImpl({final String? $type})
      : $type = $type ?? 'normal';

  factory _$CleaningDependenciesStateNormalImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CleaningDependenciesStateNormalImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CleaningDependenciesState.normal()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleaningDependenciesStateNormalImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() cleaningDependencies,
    required TResult Function() endClean,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? cleaningDependencies,
    TResult? Function()? endClean,
  }) {
    return normal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? cleaningDependencies,
    TResult Function()? endClean,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CleaningDependenciesStateNormal value) normal,
    required TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)
        cleaningDependencies,
    required TResult Function(_CleaningDependenciesStateEndClean value)
        endClean,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CleaningDependenciesStateNormal value)? normal,
    TResult? Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult? Function(_CleaningDependenciesStateEndClean value)? endClean,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CleaningDependenciesStateNormal value)? normal,
    TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult Function(_CleaningDependenciesStateEndClean value)? endClean,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CleaningDependenciesStateNormalImplToJson(
      this,
    );
  }
}

abstract class _CleaningDependenciesStateNormal
    implements CleaningDependenciesState {
  factory _CleaningDependenciesStateNormal() =
      _$CleaningDependenciesStateNormalImpl;

  factory _CleaningDependenciesStateNormal.fromJson(Map<String, dynamic> json) =
      _$CleaningDependenciesStateNormalImpl.fromJson;
}

/// @nodoc
abstract class _$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWith<
    $Res> {
  factory _$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWith(
          _$CleaningDependenciesStateCleaningDependenciesLoadingImpl value,
          $Res Function(
                  _$CleaningDependenciesStateCleaningDependenciesLoadingImpl)
              then) =
      __$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWithImpl<
          $Res>;
}

/// @nodoc
class __$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWithImpl<
        $Res>
    extends _$CleaningDependenciesStateCopyWithImpl<$Res,
        _$CleaningDependenciesStateCleaningDependenciesLoadingImpl>
    implements
        _$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWith<
            $Res> {
  __$$CleaningDependenciesStateCleaningDependenciesLoadingImplCopyWithImpl(
      _$CleaningDependenciesStateCleaningDependenciesLoadingImpl _value,
      $Res Function(_$CleaningDependenciesStateCleaningDependenciesLoadingImpl)
          _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CleaningDependenciesStateCleaningDependenciesLoadingImpl
    implements _CleaningDependenciesStateCleaningDependenciesLoading {
  _$CleaningDependenciesStateCleaningDependenciesLoadingImpl(
      {final String? $type})
      : $type = $type ?? 'cleaningDependencies';

  factory _$CleaningDependenciesStateCleaningDependenciesLoadingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CleaningDependenciesStateCleaningDependenciesLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CleaningDependenciesState.cleaningDependencies()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$CleaningDependenciesStateCleaningDependenciesLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() cleaningDependencies,
    required TResult Function() endClean,
  }) {
    return cleaningDependencies();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? cleaningDependencies,
    TResult? Function()? endClean,
  }) {
    return cleaningDependencies?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? cleaningDependencies,
    TResult Function()? endClean,
    required TResult orElse(),
  }) {
    if (cleaningDependencies != null) {
      return cleaningDependencies();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CleaningDependenciesStateNormal value) normal,
    required TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)
        cleaningDependencies,
    required TResult Function(_CleaningDependenciesStateEndClean value)
        endClean,
  }) {
    return cleaningDependencies(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CleaningDependenciesStateNormal value)? normal,
    TResult? Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult? Function(_CleaningDependenciesStateEndClean value)? endClean,
  }) {
    return cleaningDependencies?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CleaningDependenciesStateNormal value)? normal,
    TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult Function(_CleaningDependenciesStateEndClean value)? endClean,
    required TResult orElse(),
  }) {
    if (cleaningDependencies != null) {
      return cleaningDependencies(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CleaningDependenciesStateCleaningDependenciesLoadingImplToJson(
      this,
    );
  }
}

abstract class _CleaningDependenciesStateCleaningDependenciesLoading
    implements CleaningDependenciesState {
  factory _CleaningDependenciesStateCleaningDependenciesLoading() =
      _$CleaningDependenciesStateCleaningDependenciesLoadingImpl;

  factory _CleaningDependenciesStateCleaningDependenciesLoading.fromJson(
          Map<String, dynamic> json) =
      _$CleaningDependenciesStateCleaningDependenciesLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$CleaningDependenciesStateEndCleanImplCopyWith<$Res> {
  factory _$$CleaningDependenciesStateEndCleanImplCopyWith(
          _$CleaningDependenciesStateEndCleanImpl value,
          $Res Function(_$CleaningDependenciesStateEndCleanImpl) then) =
      __$$CleaningDependenciesStateEndCleanImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CleaningDependenciesStateEndCleanImplCopyWithImpl<$Res>
    extends _$CleaningDependenciesStateCopyWithImpl<$Res,
        _$CleaningDependenciesStateEndCleanImpl>
    implements _$$CleaningDependenciesStateEndCleanImplCopyWith<$Res> {
  __$$CleaningDependenciesStateEndCleanImplCopyWithImpl(
      _$CleaningDependenciesStateEndCleanImpl _value,
      $Res Function(_$CleaningDependenciesStateEndCleanImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CleaningDependenciesStateEndCleanImpl
    implements _CleaningDependenciesStateEndClean {
  _$CleaningDependenciesStateEndCleanImpl({final String? $type})
      : $type = $type ?? 'endClean';

  factory _$CleaningDependenciesStateEndCleanImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CleaningDependenciesStateEndCleanImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CleaningDependenciesState.endClean()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CleaningDependenciesStateEndCleanImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() normal,
    required TResult Function() cleaningDependencies,
    required TResult Function() endClean,
  }) {
    return endClean();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? normal,
    TResult? Function()? cleaningDependencies,
    TResult? Function()? endClean,
  }) {
    return endClean?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? normal,
    TResult Function()? cleaningDependencies,
    TResult Function()? endClean,
    required TResult orElse(),
  }) {
    if (endClean != null) {
      return endClean();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CleaningDependenciesStateNormal value) normal,
    required TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)
        cleaningDependencies,
    required TResult Function(_CleaningDependenciesStateEndClean value)
        endClean,
  }) {
    return endClean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CleaningDependenciesStateNormal value)? normal,
    TResult? Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult? Function(_CleaningDependenciesStateEndClean value)? endClean,
  }) {
    return endClean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CleaningDependenciesStateNormal value)? normal,
    TResult Function(
            _CleaningDependenciesStateCleaningDependenciesLoading value)?
        cleaningDependencies,
    TResult Function(_CleaningDependenciesStateEndClean value)? endClean,
    required TResult orElse(),
  }) {
    if (endClean != null) {
      return endClean(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CleaningDependenciesStateEndCleanImplToJson(
      this,
    );
  }
}

abstract class _CleaningDependenciesStateEndClean
    implements CleaningDependenciesState {
  factory _CleaningDependenciesStateEndClean() =
      _$CleaningDependenciesStateEndCleanImpl;

  factory _CleaningDependenciesStateEndClean.fromJson(
          Map<String, dynamic> json) =
      _$CleaningDependenciesStateEndCleanImpl.fromJson;
}
