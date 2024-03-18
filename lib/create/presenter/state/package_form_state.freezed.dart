// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PackageFormState _$PackageFormStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'normal':
      return _PackageFormStateNormal.fromJson(json);
    case 'loading':
      return _PackageFormStateLoading.fromJson(json);
    case 'error':
      return _PackageFormStateSucess.fromJson(json);
    case 'success':
      return _PackageFormStateSuccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PackageFormState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PackageFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) normal,
    required TResult Function() loading,
    required TResult Function(String name, String description) error,
    required TResult Function() success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? normal,
    TResult? Function()? loading,
    TResult? Function(String name, String description)? error,
    TResult? Function()? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? normal,
    TResult Function()? loading,
    TResult Function(String name, String description)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
    required TResult Function(_PackageFormStateSucess value) error,
    required TResult Function(_PackageFormStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
    TResult? Function(_PackageFormStateSucess value)? error,
    TResult? Function(_PackageFormStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
    TResult Function(_PackageFormStateSucess value)? error,
    TResult Function(_PackageFormStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageFormStateCopyWith<$Res> {
  factory $PackageFormStateCopyWith(
          PackageFormState value, $Res Function(PackageFormState) then) =
      _$PackageFormStateCopyWithImpl<$Res, PackageFormState>;
}

/// @nodoc
class _$PackageFormStateCopyWithImpl<$Res, $Val extends PackageFormState>
    implements $PackageFormStateCopyWith<$Res> {
  _$PackageFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PackageFormStateNormalImplCopyWith<$Res> {
  factory _$$PackageFormStateNormalImplCopyWith(
          _$PackageFormStateNormalImpl value,
          $Res Function(_$PackageFormStateNormalImpl) then) =
      __$$PackageFormStateNormalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$PackageFormStateNormalImplCopyWithImpl<$Res>
    extends _$PackageFormStateCopyWithImpl<$Res, _$PackageFormStateNormalImpl>
    implements _$$PackageFormStateNormalImplCopyWith<$Res> {
  __$$PackageFormStateNormalImplCopyWithImpl(
      _$PackageFormStateNormalImpl _value,
      $Res Function(_$PackageFormStateNormalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$PackageFormStateNormalImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageFormStateNormalImpl implements _PackageFormStateNormal {
  _$PackageFormStateNormalImpl(
      {required this.name, required this.description, final String? $type})
      : $type = $type ?? 'normal';

  factory _$PackageFormStateNormalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageFormStateNormalImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormState.normal(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormStateNormalImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageFormStateNormalImplCopyWith<_$PackageFormStateNormalImpl>
      get copyWith => __$$PackageFormStateNormalImplCopyWithImpl<
          _$PackageFormStateNormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) normal,
    required TResult Function() loading,
    required TResult Function(String name, String description) error,
    required TResult Function() success,
  }) {
    return normal(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? normal,
    TResult? Function()? loading,
    TResult? Function(String name, String description)? error,
    TResult? Function()? success,
  }) {
    return normal?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? normal,
    TResult Function()? loading,
    TResult Function(String name, String description)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
    required TResult Function(_PackageFormStateSucess value) error,
    required TResult Function(_PackageFormStateSuccess value) success,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
    TResult? Function(_PackageFormStateSucess value)? error,
    TResult? Function(_PackageFormStateSuccess value)? success,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
    TResult Function(_PackageFormStateSucess value)? error,
    TResult Function(_PackageFormStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormStateNormalImplToJson(
      this,
    );
  }
}

abstract class _PackageFormStateNormal implements PackageFormState {
  factory _PackageFormStateNormal(
      {required final String name,
      required final String description}) = _$PackageFormStateNormalImpl;

  factory _PackageFormStateNormal.fromJson(Map<String, dynamic> json) =
      _$PackageFormStateNormalImpl.fromJson;

  String get name;
  String get description;
  @JsonKey(ignore: true)
  _$$PackageFormStateNormalImplCopyWith<_$PackageFormStateNormalImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageFormStateLoadingImplCopyWith<$Res> {
  factory _$$PackageFormStateLoadingImplCopyWith(
          _$PackageFormStateLoadingImpl value,
          $Res Function(_$PackageFormStateLoadingImpl) then) =
      __$$PackageFormStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PackageFormStateLoadingImplCopyWithImpl<$Res>
    extends _$PackageFormStateCopyWithImpl<$Res, _$PackageFormStateLoadingImpl>
    implements _$$PackageFormStateLoadingImplCopyWith<$Res> {
  __$$PackageFormStateLoadingImplCopyWithImpl(
      _$PackageFormStateLoadingImpl _value,
      $Res Function(_$PackageFormStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PackageFormStateLoadingImpl implements _PackageFormStateLoading {
  _$PackageFormStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$PackageFormStateLoadingImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageFormStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) normal,
    required TResult Function() loading,
    required TResult Function(String name, String description) error,
    required TResult Function() success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? normal,
    TResult? Function()? loading,
    TResult? Function(String name, String description)? error,
    TResult? Function()? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? normal,
    TResult Function()? loading,
    TResult Function(String name, String description)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
    required TResult Function(_PackageFormStateSucess value) error,
    required TResult Function(_PackageFormStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
    TResult? Function(_PackageFormStateSucess value)? error,
    TResult? Function(_PackageFormStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
    TResult Function(_PackageFormStateSucess value)? error,
    TResult Function(_PackageFormStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormStateLoadingImplToJson(
      this,
    );
  }
}

abstract class _PackageFormStateLoading implements PackageFormState {
  factory _PackageFormStateLoading() = _$PackageFormStateLoadingImpl;

  factory _PackageFormStateLoading.fromJson(Map<String, dynamic> json) =
      _$PackageFormStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$PackageFormStateSucessImplCopyWith<$Res> {
  factory _$$PackageFormStateSucessImplCopyWith(
          _$PackageFormStateSucessImpl value,
          $Res Function(_$PackageFormStateSucessImpl) then) =
      __$$PackageFormStateSucessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String description});
}

/// @nodoc
class __$$PackageFormStateSucessImplCopyWithImpl<$Res>
    extends _$PackageFormStateCopyWithImpl<$Res, _$PackageFormStateSucessImpl>
    implements _$$PackageFormStateSucessImplCopyWith<$Res> {
  __$$PackageFormStateSucessImplCopyWithImpl(
      _$PackageFormStateSucessImpl _value,
      $Res Function(_$PackageFormStateSucessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = null,
  }) {
    return _then(_$PackageFormStateSucessImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageFormStateSucessImpl implements _PackageFormStateSucess {
  _$PackageFormStateSucessImpl(
      {required this.name, required this.description, final String? $type})
      : $type = $type ?? 'error';

  factory _$PackageFormStateSucessImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageFormStateSucessImplFromJson(json);

  @override
  final String name;
  @override
  final String description;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormState.error(name: $name, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormStateSucessImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageFormStateSucessImplCopyWith<_$PackageFormStateSucessImpl>
      get copyWith => __$$PackageFormStateSucessImplCopyWithImpl<
          _$PackageFormStateSucessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) normal,
    required TResult Function() loading,
    required TResult Function(String name, String description) error,
    required TResult Function() success,
  }) {
    return error(name, description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? normal,
    TResult? Function()? loading,
    TResult? Function(String name, String description)? error,
    TResult? Function()? success,
  }) {
    return error?.call(name, description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? normal,
    TResult Function()? loading,
    TResult Function(String name, String description)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(name, description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
    required TResult Function(_PackageFormStateSucess value) error,
    required TResult Function(_PackageFormStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
    TResult? Function(_PackageFormStateSucess value)? error,
    TResult? Function(_PackageFormStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
    TResult Function(_PackageFormStateSucess value)? error,
    TResult Function(_PackageFormStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormStateSucessImplToJson(
      this,
    );
  }
}

abstract class _PackageFormStateSucess implements PackageFormState {
  factory _PackageFormStateSucess(
      {required final String name,
      required final String description}) = _$PackageFormStateSucessImpl;

  factory _PackageFormStateSucess.fromJson(Map<String, dynamic> json) =
      _$PackageFormStateSucessImpl.fromJson;

  String get name;
  String get description;
  @JsonKey(ignore: true)
  _$$PackageFormStateSucessImplCopyWith<_$PackageFormStateSucessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PackageFormStateSuccessImplCopyWith<$Res> {
  factory _$$PackageFormStateSuccessImplCopyWith(
          _$PackageFormStateSuccessImpl value,
          $Res Function(_$PackageFormStateSuccessImpl) then) =
      __$$PackageFormStateSuccessImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PackageFormStateSuccessImplCopyWithImpl<$Res>
    extends _$PackageFormStateCopyWithImpl<$Res, _$PackageFormStateSuccessImpl>
    implements _$$PackageFormStateSuccessImplCopyWith<$Res> {
  __$$PackageFormStateSuccessImplCopyWithImpl(
      _$PackageFormStateSuccessImpl _value,
      $Res Function(_$PackageFormStateSuccessImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$PackageFormStateSuccessImpl implements _PackageFormStateSuccess {
  _$PackageFormStateSuccessImpl({final String? $type})
      : $type = $type ?? 'success';

  factory _$PackageFormStateSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageFormStateSuccessImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormState.success()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormStateSuccessImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, String description) normal,
    required TResult Function() loading,
    required TResult Function(String name, String description) error,
    required TResult Function() success,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, String description)? normal,
    TResult? Function()? loading,
    TResult? Function(String name, String description)? error,
    TResult? Function()? success,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, String description)? normal,
    TResult Function()? loading,
    TResult Function(String name, String description)? error,
    TResult Function()? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
    required TResult Function(_PackageFormStateSucess value) error,
    required TResult Function(_PackageFormStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
    TResult? Function(_PackageFormStateSucess value)? error,
    TResult? Function(_PackageFormStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
    TResult Function(_PackageFormStateSucess value)? error,
    TResult Function(_PackageFormStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageFormStateSuccessImplToJson(
      this,
    );
  }
}

abstract class _PackageFormStateSuccess implements PackageFormState {
  factory _PackageFormStateSuccess() = _$PackageFormStateSuccessImpl;

  factory _PackageFormStateSuccess.fromJson(Map<String, dynamic> json) =
      _$PackageFormStateSuccessImpl.fromJson;
}
