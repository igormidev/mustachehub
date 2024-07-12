// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SourceError _$SourceErrorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'standard':
      return _SourceErrorStandard.fromJson(json);
    case 'cast':
      return _SourceErrorCast.fromJson(json);
    case 'notFound':
      return _SourceErrorNotFound.fromJson(json);
    case 'notLoggedIn':
      return _SourceErrorNotLoggedIn.fromJson(json);
    case 'dontExistAnyData':
      return _SourceErrorDontExistAnyData.fromJson(json);
    case 'dontHaveAccess':
      return _SourceErrorDontHaveAccess.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'SourceError',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SourceError {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SourceErrorCopyWith<SourceError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceErrorCopyWith<$Res> {
  factory $SourceErrorCopyWith(
          SourceError value, $Res Function(SourceError) then) =
      _$SourceErrorCopyWithImpl<$Res, SourceError>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SourceErrorCopyWithImpl<$Res, $Val extends SourceError>
    implements $SourceErrorCopyWith<$Res> {
  _$SourceErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceErrorStandardImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorStandardImplCopyWith(_$SourceErrorStandardImpl value,
          $Res Function(_$SourceErrorStandardImpl) then) =
      __$$SourceErrorStandardImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorStandardImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorStandardImpl>
    implements _$$SourceErrorStandardImplCopyWith<$Res> {
  __$$SourceErrorStandardImplCopyWithImpl(_$SourceErrorStandardImpl _value,
      $Res Function(_$SourceErrorStandardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorStandardImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorStandardImpl implements _SourceErrorStandard {
  _$SourceErrorStandardImpl({required this.message, final String? $type})
      : $type = $type ?? 'standard';

  factory _$SourceErrorStandardImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceErrorStandardImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.standard(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorStandardImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorStandardImplCopyWith<_$SourceErrorStandardImpl> get copyWith =>
      __$$SourceErrorStandardImplCopyWithImpl<_$SourceErrorStandardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return standard(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return standard?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return standard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return standard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (standard != null) {
      return standard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorStandardImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorStandard implements SourceError {
  factory _SourceErrorStandard({required final String message}) =
      _$SourceErrorStandardImpl;

  factory _SourceErrorStandard.fromJson(Map<String, dynamic> json) =
      _$SourceErrorStandardImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorStandardImplCopyWith<_$SourceErrorStandardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SourceErrorCastImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorCastImplCopyWith(_$SourceErrorCastImpl value,
          $Res Function(_$SourceErrorCastImpl) then) =
      __$$SourceErrorCastImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorCastImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorCastImpl>
    implements _$$SourceErrorCastImplCopyWith<$Res> {
  __$$SourceErrorCastImplCopyWithImpl(
      _$SourceErrorCastImpl _value, $Res Function(_$SourceErrorCastImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorCastImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorCastImpl implements _SourceErrorCast {
  _$SourceErrorCastImpl({required this.message, final String? $type})
      : $type = $type ?? 'cast';

  factory _$SourceErrorCastImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceErrorCastImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.cast(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorCastImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorCastImplCopyWith<_$SourceErrorCastImpl> get copyWith =>
      __$$SourceErrorCastImplCopyWithImpl<_$SourceErrorCastImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return cast(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return cast?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (cast != null) {
      return cast(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return cast(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return cast?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (cast != null) {
      return cast(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorCastImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorCast implements SourceError {
  factory _SourceErrorCast({required final String message}) =
      _$SourceErrorCastImpl;

  factory _SourceErrorCast.fromJson(Map<String, dynamic> json) =
      _$SourceErrorCastImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorCastImplCopyWith<_$SourceErrorCastImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SourceErrorNotFoundImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorNotFoundImplCopyWith(_$SourceErrorNotFoundImpl value,
          $Res Function(_$SourceErrorNotFoundImpl) then) =
      __$$SourceErrorNotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorNotFoundImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorNotFoundImpl>
    implements _$$SourceErrorNotFoundImplCopyWith<$Res> {
  __$$SourceErrorNotFoundImplCopyWithImpl(_$SourceErrorNotFoundImpl _value,
      $Res Function(_$SourceErrorNotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorNotFoundImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorNotFoundImpl implements _SourceErrorNotFound {
  _$SourceErrorNotFoundImpl({required this.message, final String? $type})
      : $type = $type ?? 'notFound';

  factory _$SourceErrorNotFoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceErrorNotFoundImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorNotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorNotFoundImplCopyWith<_$SourceErrorNotFoundImpl> get copyWith =>
      __$$SourceErrorNotFoundImplCopyWithImpl<_$SourceErrorNotFoundImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorNotFoundImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorNotFound implements SourceError {
  factory _SourceErrorNotFound({required final String message}) =
      _$SourceErrorNotFoundImpl;

  factory _SourceErrorNotFound.fromJson(Map<String, dynamic> json) =
      _$SourceErrorNotFoundImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorNotFoundImplCopyWith<_$SourceErrorNotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SourceErrorNotLoggedInImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorNotLoggedInImplCopyWith(
          _$SourceErrorNotLoggedInImpl value,
          $Res Function(_$SourceErrorNotLoggedInImpl) then) =
      __$$SourceErrorNotLoggedInImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorNotLoggedInImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorNotLoggedInImpl>
    implements _$$SourceErrorNotLoggedInImplCopyWith<$Res> {
  __$$SourceErrorNotLoggedInImplCopyWithImpl(
      _$SourceErrorNotLoggedInImpl _value,
      $Res Function(_$SourceErrorNotLoggedInImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorNotLoggedInImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorNotLoggedInImpl implements _SourceErrorNotLoggedIn {
  _$SourceErrorNotLoggedInImpl(
      {this.message = 'You need to be logged in to access this feature',
      final String? $type})
      : $type = $type ?? 'notLoggedIn';

  factory _$SourceErrorNotLoggedInImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceErrorNotLoggedInImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.notLoggedIn(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorNotLoggedInImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorNotLoggedInImplCopyWith<_$SourceErrorNotLoggedInImpl>
      get copyWith => __$$SourceErrorNotLoggedInImplCopyWithImpl<
          _$SourceErrorNotLoggedInImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return notLoggedIn(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return notLoggedIn?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return notLoggedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return notLoggedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (notLoggedIn != null) {
      return notLoggedIn(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorNotLoggedInImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorNotLoggedIn implements SourceError {
  factory _SourceErrorNotLoggedIn({final String message}) =
      _$SourceErrorNotLoggedInImpl;

  factory _SourceErrorNotLoggedIn.fromJson(Map<String, dynamic> json) =
      _$SourceErrorNotLoggedInImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorNotLoggedInImplCopyWith<_$SourceErrorNotLoggedInImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SourceErrorDontExistAnyDataImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorDontExistAnyDataImplCopyWith(
          _$SourceErrorDontExistAnyDataImpl value,
          $Res Function(_$SourceErrorDontExistAnyDataImpl) then) =
      __$$SourceErrorDontExistAnyDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorDontExistAnyDataImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorDontExistAnyDataImpl>
    implements _$$SourceErrorDontExistAnyDataImplCopyWith<$Res> {
  __$$SourceErrorDontExistAnyDataImplCopyWithImpl(
      _$SourceErrorDontExistAnyDataImpl _value,
      $Res Function(_$SourceErrorDontExistAnyDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorDontExistAnyDataImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorDontExistAnyDataImpl
    implements _SourceErrorDontExistAnyData {
  _$SourceErrorDontExistAnyDataImpl(
      {required this.message, final String? $type})
      : $type = $type ?? 'dontExistAnyData';

  factory _$SourceErrorDontExistAnyDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SourceErrorDontExistAnyDataImplFromJson(json);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.dontExistAnyData(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorDontExistAnyDataImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorDontExistAnyDataImplCopyWith<_$SourceErrorDontExistAnyDataImpl>
      get copyWith => __$$SourceErrorDontExistAnyDataImplCopyWithImpl<
          _$SourceErrorDontExistAnyDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return dontExistAnyData(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return dontExistAnyData?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (dontExistAnyData != null) {
      return dontExistAnyData(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return dontExistAnyData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return dontExistAnyData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (dontExistAnyData != null) {
      return dontExistAnyData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorDontExistAnyDataImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorDontExistAnyData implements SourceError {
  factory _SourceErrorDontExistAnyData({required final String message}) =
      _$SourceErrorDontExistAnyDataImpl;

  factory _SourceErrorDontExistAnyData.fromJson(Map<String, dynamic> json) =
      _$SourceErrorDontExistAnyDataImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorDontExistAnyDataImplCopyWith<_$SourceErrorDontExistAnyDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SourceErrorDontHaveAccessImplCopyWith<$Res>
    implements $SourceErrorCopyWith<$Res> {
  factory _$$SourceErrorDontHaveAccessImplCopyWith(
          _$SourceErrorDontHaveAccessImpl value,
          $Res Function(_$SourceErrorDontHaveAccessImpl) then) =
      __$$SourceErrorDontHaveAccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SourceErrorDontHaveAccessImplCopyWithImpl<$Res>
    extends _$SourceErrorCopyWithImpl<$Res, _$SourceErrorDontHaveAccessImpl>
    implements _$$SourceErrorDontHaveAccessImplCopyWith<$Res> {
  __$$SourceErrorDontHaveAccessImplCopyWithImpl(
      _$SourceErrorDontHaveAccessImpl _value,
      $Res Function(_$SourceErrorDontHaveAccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SourceErrorDontHaveAccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceErrorDontHaveAccessImpl implements _SourceErrorDontHaveAccess {
  _$SourceErrorDontHaveAccessImpl(
      {this.message = 'You need have access to this datga',
      final String? $type})
      : $type = $type ?? 'dontHaveAccess';

  factory _$SourceErrorDontHaveAccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceErrorDontHaveAccessImplFromJson(json);

  @override
  @JsonKey()
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SourceError.dontHaveAccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceErrorDontHaveAccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceErrorDontHaveAccessImplCopyWith<_$SourceErrorDontHaveAccessImpl>
      get copyWith => __$$SourceErrorDontHaveAccessImplCopyWithImpl<
          _$SourceErrorDontHaveAccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) standard,
    required TResult Function(String message) cast,
    required TResult Function(String message) notFound,
    required TResult Function(String message) notLoggedIn,
    required TResult Function(String message) dontExistAnyData,
    required TResult Function(String message) dontHaveAccess,
  }) {
    return dontHaveAccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? standard,
    TResult? Function(String message)? cast,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? notLoggedIn,
    TResult? Function(String message)? dontExistAnyData,
    TResult? Function(String message)? dontHaveAccess,
  }) {
    return dontHaveAccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? standard,
    TResult Function(String message)? cast,
    TResult Function(String message)? notFound,
    TResult Function(String message)? notLoggedIn,
    TResult Function(String message)? dontExistAnyData,
    TResult Function(String message)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (dontHaveAccess != null) {
      return dontHaveAccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SourceErrorStandard value) standard,
    required TResult Function(_SourceErrorCast value) cast,
    required TResult Function(_SourceErrorNotFound value) notFound,
    required TResult Function(_SourceErrorNotLoggedIn value) notLoggedIn,
    required TResult Function(_SourceErrorDontExistAnyData value)
        dontExistAnyData,
    required TResult Function(_SourceErrorDontHaveAccess value) dontHaveAccess,
  }) {
    return dontHaveAccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SourceErrorStandard value)? standard,
    TResult? Function(_SourceErrorCast value)? cast,
    TResult? Function(_SourceErrorNotFound value)? notFound,
    TResult? Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult? Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult? Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
  }) {
    return dontHaveAccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SourceErrorStandard value)? standard,
    TResult Function(_SourceErrorCast value)? cast,
    TResult Function(_SourceErrorNotFound value)? notFound,
    TResult Function(_SourceErrorNotLoggedIn value)? notLoggedIn,
    TResult Function(_SourceErrorDontExistAnyData value)? dontExistAnyData,
    TResult Function(_SourceErrorDontHaveAccess value)? dontHaveAccess,
    required TResult orElse(),
  }) {
    if (dontHaveAccess != null) {
      return dontHaveAccess(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceErrorDontHaveAccessImplToJson(
      this,
    );
  }
}

abstract class _SourceErrorDontHaveAccess implements SourceError {
  factory _SourceErrorDontHaveAccess({final String message}) =
      _$SourceErrorDontHaveAccessImpl;

  factory _SourceErrorDontHaveAccess.fromJson(Map<String, dynamic> json) =
      _$SourceErrorDontHaveAccessImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$SourceErrorDontHaveAccessImplCopyWith<_$SourceErrorDontHaveAccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
