// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_collections_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCollectionsState _$UserCollectionsStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _UserCollectionsStateLoading.fromJson(json);
    case 'processing':
      return _UserCollectionsStateProcessing.fromJson(json);
    case 'withData':
      return _UserCollectionsStateWithData.fromJson(json);
    case 'error':
      return _UserCollectionsStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UserCollectionsState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UserCollectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserCollectionRoot userCollections) processing,
    required TResult Function(UserCollectionRoot userCollections) withData,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserCollectionRoot userCollections)? processing,
    TResult? Function(UserCollectionRoot userCollections)? withData,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserCollectionRoot userCollections)? processing,
    TResult Function(UserCollectionRoot userCollections)? withData,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserCollectionsStateLoading value) loading,
    required TResult Function(_UserCollectionsStateProcessing value) processing,
    required TResult Function(_UserCollectionsStateWithData value) withData,
    required TResult Function(_UserCollectionsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserCollectionsStateLoading value)? loading,
    TResult? Function(_UserCollectionsStateProcessing value)? processing,
    TResult? Function(_UserCollectionsStateWithData value)? withData,
    TResult? Function(_UserCollectionsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserCollectionsStateLoading value)? loading,
    TResult Function(_UserCollectionsStateProcessing value)? processing,
    TResult Function(_UserCollectionsStateWithData value)? withData,
    TResult Function(_UserCollectionsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCollectionsStateCopyWith<$Res> {
  factory $UserCollectionsStateCopyWith(UserCollectionsState value,
          $Res Function(UserCollectionsState) then) =
      _$UserCollectionsStateCopyWithImpl<$Res, UserCollectionsState>;
}

/// @nodoc
class _$UserCollectionsStateCopyWithImpl<$Res,
        $Val extends UserCollectionsState>
    implements $UserCollectionsStateCopyWith<$Res> {
  _$UserCollectionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UserCollectionsStateLoadingImplCopyWith<$Res> {
  factory _$$UserCollectionsStateLoadingImplCopyWith(
          _$UserCollectionsStateLoadingImpl value,
          $Res Function(_$UserCollectionsStateLoadingImpl) then) =
      __$$UserCollectionsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserCollectionsStateLoadingImplCopyWithImpl<$Res>
    extends _$UserCollectionsStateCopyWithImpl<$Res,
        _$UserCollectionsStateLoadingImpl>
    implements _$$UserCollectionsStateLoadingImplCopyWith<$Res> {
  __$$UserCollectionsStateLoadingImplCopyWithImpl(
      _$UserCollectionsStateLoadingImpl _value,
      $Res Function(_$UserCollectionsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionsStateLoadingImpl
    implements _UserCollectionsStateLoading {
  _$UserCollectionsStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$UserCollectionsStateLoadingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserCollectionsStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionsStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserCollectionRoot userCollections) processing,
    required TResult Function(UserCollectionRoot userCollections) withData,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserCollectionRoot userCollections)? processing,
    TResult? Function(UserCollectionRoot userCollections)? withData,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserCollectionRoot userCollections)? processing,
    TResult Function(UserCollectionRoot userCollections)? withData,
    TResult Function(String message)? error,
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
    required TResult Function(_UserCollectionsStateLoading value) loading,
    required TResult Function(_UserCollectionsStateProcessing value) processing,
    required TResult Function(_UserCollectionsStateWithData value) withData,
    required TResult Function(_UserCollectionsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserCollectionsStateLoading value)? loading,
    TResult? Function(_UserCollectionsStateProcessing value)? processing,
    TResult? Function(_UserCollectionsStateWithData value)? withData,
    TResult? Function(_UserCollectionsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserCollectionsStateLoading value)? loading,
    TResult Function(_UserCollectionsStateProcessing value)? processing,
    TResult Function(_UserCollectionsStateWithData value)? withData,
    TResult Function(_UserCollectionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionsStateLoadingImplToJson(
      this,
    );
  }
}

abstract class _UserCollectionsStateLoading implements UserCollectionsState {
  factory _UserCollectionsStateLoading() = _$UserCollectionsStateLoadingImpl;

  factory _UserCollectionsStateLoading.fromJson(Map<String, dynamic> json) =
      _$UserCollectionsStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$UserCollectionsStateProcessingImplCopyWith<$Res> {
  factory _$$UserCollectionsStateProcessingImplCopyWith(
          _$UserCollectionsStateProcessingImpl value,
          $Res Function(_$UserCollectionsStateProcessingImpl) then) =
      __$$UserCollectionsStateProcessingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCollectionRoot userCollections});
}

/// @nodoc
class __$$UserCollectionsStateProcessingImplCopyWithImpl<$Res>
    extends _$UserCollectionsStateCopyWithImpl<$Res,
        _$UserCollectionsStateProcessingImpl>
    implements _$$UserCollectionsStateProcessingImplCopyWith<$Res> {
  __$$UserCollectionsStateProcessingImplCopyWithImpl(
      _$UserCollectionsStateProcessingImpl _value,
      $Res Function(_$UserCollectionsStateProcessingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCollections = null,
  }) {
    return _then(_$UserCollectionsStateProcessingImpl(
      userCollections: null == userCollections
          ? _value.userCollections
          : userCollections // ignore: cast_nullable_to_non_nullable
              as UserCollectionRoot,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionsStateProcessingImpl
    implements _UserCollectionsStateProcessing {
  _$UserCollectionsStateProcessingImpl(
      {required this.userCollections, final String? $type})
      : $type = $type ?? 'processing';

  factory _$UserCollectionsStateProcessingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserCollectionsStateProcessingImplFromJson(json);

  @override
  final UserCollectionRoot userCollections;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionsState.processing(userCollections: $userCollections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionsStateProcessingImpl &&
            (identical(other.userCollections, userCollections) ||
                other.userCollections == userCollections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCollections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionsStateProcessingImplCopyWith<
          _$UserCollectionsStateProcessingImpl>
      get copyWith => __$$UserCollectionsStateProcessingImplCopyWithImpl<
          _$UserCollectionsStateProcessingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserCollectionRoot userCollections) processing,
    required TResult Function(UserCollectionRoot userCollections) withData,
    required TResult Function(String message) error,
  }) {
    return processing(userCollections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserCollectionRoot userCollections)? processing,
    TResult? Function(UserCollectionRoot userCollections)? withData,
    TResult? Function(String message)? error,
  }) {
    return processing?.call(userCollections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserCollectionRoot userCollections)? processing,
    TResult Function(UserCollectionRoot userCollections)? withData,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(userCollections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserCollectionsStateLoading value) loading,
    required TResult Function(_UserCollectionsStateProcessing value) processing,
    required TResult Function(_UserCollectionsStateWithData value) withData,
    required TResult Function(_UserCollectionsStateError value) error,
  }) {
    return processing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserCollectionsStateLoading value)? loading,
    TResult? Function(_UserCollectionsStateProcessing value)? processing,
    TResult? Function(_UserCollectionsStateWithData value)? withData,
    TResult? Function(_UserCollectionsStateError value)? error,
  }) {
    return processing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserCollectionsStateLoading value)? loading,
    TResult Function(_UserCollectionsStateProcessing value)? processing,
    TResult Function(_UserCollectionsStateWithData value)? withData,
    TResult Function(_UserCollectionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (processing != null) {
      return processing(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionsStateProcessingImplToJson(
      this,
    );
  }
}

abstract class _UserCollectionsStateProcessing implements UserCollectionsState {
  factory _UserCollectionsStateProcessing(
          {required final UserCollectionRoot userCollections}) =
      _$UserCollectionsStateProcessingImpl;

  factory _UserCollectionsStateProcessing.fromJson(Map<String, dynamic> json) =
      _$UserCollectionsStateProcessingImpl.fromJson;

  UserCollectionRoot get userCollections;
  @JsonKey(ignore: true)
  _$$UserCollectionsStateProcessingImplCopyWith<
          _$UserCollectionsStateProcessingImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionsStateWithDataImplCopyWith<$Res> {
  factory _$$UserCollectionsStateWithDataImplCopyWith(
          _$UserCollectionsStateWithDataImpl value,
          $Res Function(_$UserCollectionsStateWithDataImpl) then) =
      __$$UserCollectionsStateWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserCollectionRoot userCollections});
}

/// @nodoc
class __$$UserCollectionsStateWithDataImplCopyWithImpl<$Res>
    extends _$UserCollectionsStateCopyWithImpl<$Res,
        _$UserCollectionsStateWithDataImpl>
    implements _$$UserCollectionsStateWithDataImplCopyWith<$Res> {
  __$$UserCollectionsStateWithDataImplCopyWithImpl(
      _$UserCollectionsStateWithDataImpl _value,
      $Res Function(_$UserCollectionsStateWithDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userCollections = null,
  }) {
    return _then(_$UserCollectionsStateWithDataImpl(
      userCollections: null == userCollections
          ? _value.userCollections
          : userCollections // ignore: cast_nullable_to_non_nullable
              as UserCollectionRoot,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionsStateWithDataImpl
    implements _UserCollectionsStateWithData {
  _$UserCollectionsStateWithDataImpl(
      {required this.userCollections, final String? $type})
      : $type = $type ?? 'withData';

  factory _$UserCollectionsStateWithDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UserCollectionsStateWithDataImplFromJson(json);

  @override
  final UserCollectionRoot userCollections;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionsState.withData(userCollections: $userCollections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionsStateWithDataImpl &&
            (identical(other.userCollections, userCollections) ||
                other.userCollections == userCollections));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userCollections);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionsStateWithDataImplCopyWith<
          _$UserCollectionsStateWithDataImpl>
      get copyWith => __$$UserCollectionsStateWithDataImplCopyWithImpl<
          _$UserCollectionsStateWithDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserCollectionRoot userCollections) processing,
    required TResult Function(UserCollectionRoot userCollections) withData,
    required TResult Function(String message) error,
  }) {
    return withData(userCollections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserCollectionRoot userCollections)? processing,
    TResult? Function(UserCollectionRoot userCollections)? withData,
    TResult? Function(String message)? error,
  }) {
    return withData?.call(userCollections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserCollectionRoot userCollections)? processing,
    TResult Function(UserCollectionRoot userCollections)? withData,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(userCollections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserCollectionsStateLoading value) loading,
    required TResult Function(_UserCollectionsStateProcessing value) processing,
    required TResult Function(_UserCollectionsStateWithData value) withData,
    required TResult Function(_UserCollectionsStateError value) error,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserCollectionsStateLoading value)? loading,
    TResult? Function(_UserCollectionsStateProcessing value)? processing,
    TResult? Function(_UserCollectionsStateWithData value)? withData,
    TResult? Function(_UserCollectionsStateError value)? error,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserCollectionsStateLoading value)? loading,
    TResult Function(_UserCollectionsStateProcessing value)? processing,
    TResult Function(_UserCollectionsStateWithData value)? withData,
    TResult Function(_UserCollectionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionsStateWithDataImplToJson(
      this,
    );
  }
}

abstract class _UserCollectionsStateWithData implements UserCollectionsState {
  factory _UserCollectionsStateWithData(
          {required final UserCollectionRoot userCollections}) =
      _$UserCollectionsStateWithDataImpl;

  factory _UserCollectionsStateWithData.fromJson(Map<String, dynamic> json) =
      _$UserCollectionsStateWithDataImpl.fromJson;

  UserCollectionRoot get userCollections;
  @JsonKey(ignore: true)
  _$$UserCollectionsStateWithDataImplCopyWith<
          _$UserCollectionsStateWithDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserCollectionsStateErrorImplCopyWith<$Res> {
  factory _$$UserCollectionsStateErrorImplCopyWith(
          _$UserCollectionsStateErrorImpl value,
          $Res Function(_$UserCollectionsStateErrorImpl) then) =
      __$$UserCollectionsStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UserCollectionsStateErrorImplCopyWithImpl<$Res>
    extends _$UserCollectionsStateCopyWithImpl<$Res,
        _$UserCollectionsStateErrorImpl>
    implements _$$UserCollectionsStateErrorImplCopyWith<$Res> {
  __$$UserCollectionsStateErrorImplCopyWithImpl(
      _$UserCollectionsStateErrorImpl _value,
      $Res Function(_$UserCollectionsStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UserCollectionsStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCollectionsStateErrorImpl implements _UserCollectionsStateError {
  _$UserCollectionsStateErrorImpl({required this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$UserCollectionsStateErrorImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCollectionsStateErrorImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserCollectionsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCollectionsStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCollectionsStateErrorImplCopyWith<_$UserCollectionsStateErrorImpl>
      get copyWith => __$$UserCollectionsStateErrorImplCopyWithImpl<
          _$UserCollectionsStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(UserCollectionRoot userCollections) processing,
    required TResult Function(UserCollectionRoot userCollections) withData,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(UserCollectionRoot userCollections)? processing,
    TResult? Function(UserCollectionRoot userCollections)? withData,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserCollectionRoot userCollections)? processing,
    TResult Function(UserCollectionRoot userCollections)? withData,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserCollectionsStateLoading value) loading,
    required TResult Function(_UserCollectionsStateProcessing value) processing,
    required TResult Function(_UserCollectionsStateWithData value) withData,
    required TResult Function(_UserCollectionsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UserCollectionsStateLoading value)? loading,
    TResult? Function(_UserCollectionsStateProcessing value)? processing,
    TResult? Function(_UserCollectionsStateWithData value)? withData,
    TResult? Function(_UserCollectionsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserCollectionsStateLoading value)? loading,
    TResult Function(_UserCollectionsStateProcessing value)? processing,
    TResult Function(_UserCollectionsStateWithData value)? withData,
    TResult Function(_UserCollectionsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCollectionsStateErrorImplToJson(
      this,
    );
  }
}

abstract class _UserCollectionsStateError implements UserCollectionsState {
  factory _UserCollectionsStateError({required final String message}) =
      _$UserCollectionsStateErrorImpl;

  factory _UserCollectionsStateError.fromJson(Map<String, dynamic> json) =
      _$UserCollectionsStateErrorImpl.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$UserCollectionsStateErrorImplCopyWith<_$UserCollectionsStateErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}
