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

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PackageFormState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PackageFormState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PackageFormData formData) normal,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PackageFormData formData)? normal,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PackageFormData formData)? normal,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
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
  $Res call({PackageFormData formData});

  $PackageFormDataCopyWith<$Res> get formData;
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
    Object? formData = null,
  }) {
    return _then(_$PackageFormStateNormalImpl(
      formData: null == formData
          ? _value.formData
          : formData // ignore: cast_nullable_to_non_nullable
              as PackageFormData,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageFormDataCopyWith<$Res> get formData {
    return $PackageFormDataCopyWith<$Res>(_value.formData, (value) {
      return _then(_value.copyWith(formData: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageFormStateNormalImpl implements _PackageFormStateNormal {
  _$PackageFormStateNormalImpl({required this.formData, final String? $type})
      : $type = $type ?? 'normal';

  factory _$PackageFormStateNormalImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageFormStateNormalImplFromJson(json);

  @override
  final PackageFormData formData;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PackageFormState.normal(formData: $formData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageFormStateNormalImpl &&
            (identical(other.formData, formData) ||
                other.formData == formData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, formData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageFormStateNormalImplCopyWith<_$PackageFormStateNormalImpl>
      get copyWith => __$$PackageFormStateNormalImplCopyWithImpl<
          _$PackageFormStateNormalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PackageFormData formData) normal,
    required TResult Function() loading,
  }) {
    return normal(formData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PackageFormData formData)? normal,
    TResult? Function()? loading,
  }) {
    return normal?.call(formData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PackageFormData formData)? normal,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (normal != null) {
      return normal(formData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PackageFormStateNormal value) normal,
    required TResult Function(_PackageFormStateLoading value) loading,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
  }) {
    return normal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
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
  factory _PackageFormStateNormal({required final PackageFormData formData}) =
      _$PackageFormStateNormalImpl;

  factory _PackageFormStateNormal.fromJson(Map<String, dynamic> json) =
      _$PackageFormStateNormalImpl.fromJson;

  PackageFormData get formData;
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
    required TResult Function(PackageFormData formData) normal,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PackageFormData formData)? normal,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PackageFormData formData)? normal,
    TResult Function()? loading,
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
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PackageFormStateNormal value)? normal,
    TResult? Function(_PackageFormStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PackageFormStateNormal value)? normal,
    TResult Function(_PackageFormStateLoading value)? loading,
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
