// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sugestion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SugestionState {
  Map<String, TokenIdentifier> get flatMap =>
      throw _privateConstructorUsedError;
  String get availibleVariablesString => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)
        withOnlyFlatMapCache,
    required TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)
        withSugestionAndFlatMapCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult? Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithOnlyFlatMapCache value) withOnlyFlatMapCache,
    required TResult Function(WithSugestion value) withSugestionAndFlatMapCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult? Function(WithSugestion value)? withSugestionAndFlatMapCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult Function(WithSugestion value)? withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SugestionStateCopyWith<SugestionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SugestionStateCopyWith<$Res> {
  factory $SugestionStateCopyWith(
          SugestionState value, $Res Function(SugestionState) then) =
      _$SugestionStateCopyWithImpl<$Res, SugestionState>;
  @useResult
  $Res call(
      {Map<String, TokenIdentifier> flatMap, String availibleVariablesString});
}

/// @nodoc
class _$SugestionStateCopyWithImpl<$Res, $Val extends SugestionState>
    implements $SugestionStateCopyWith<$Res> {
  _$SugestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flatMap = null,
    Object? availibleVariablesString = null,
  }) {
    return _then(_value.copyWith(
      flatMap: null == flatMap
          ? _value.flatMap
          : flatMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TokenIdentifier>,
      availibleVariablesString: null == availibleVariablesString
          ? _value.availibleVariablesString
          : availibleVariablesString // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WithOnlyFlatMapCacheImplCopyWith<$Res>
    implements $SugestionStateCopyWith<$Res> {
  factory _$$WithOnlyFlatMapCacheImplCopyWith(_$WithOnlyFlatMapCacheImpl value,
          $Res Function(_$WithOnlyFlatMapCacheImpl) then) =
      __$$WithOnlyFlatMapCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, TokenIdentifier> flatMap, String availibleVariablesString});
}

/// @nodoc
class __$$WithOnlyFlatMapCacheImplCopyWithImpl<$Res>
    extends _$SugestionStateCopyWithImpl<$Res, _$WithOnlyFlatMapCacheImpl>
    implements _$$WithOnlyFlatMapCacheImplCopyWith<$Res> {
  __$$WithOnlyFlatMapCacheImplCopyWithImpl(_$WithOnlyFlatMapCacheImpl _value,
      $Res Function(_$WithOnlyFlatMapCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flatMap = null,
    Object? availibleVariablesString = null,
  }) {
    return _then(_$WithOnlyFlatMapCacheImpl(
      flatMap: null == flatMap
          ? _value._flatMap
          : flatMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TokenIdentifier>,
      availibleVariablesString: null == availibleVariablesString
          ? _value.availibleVariablesString
          : availibleVariablesString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WithOnlyFlatMapCacheImpl implements WithOnlyFlatMapCache {
  _$WithOnlyFlatMapCacheImpl(
      {required final Map<String, TokenIdentifier> flatMap,
      required this.availibleVariablesString})
      : _flatMap = flatMap;

  final Map<String, TokenIdentifier> _flatMap;
  @override
  Map<String, TokenIdentifier> get flatMap {
    if (_flatMap is EqualUnmodifiableMapView) return _flatMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flatMap);
  }

  @override
  final String availibleVariablesString;

  @override
  String toString() {
    return 'SugestionState.withOnlyFlatMapCache(flatMap: $flatMap, availibleVariablesString: $availibleVariablesString)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithOnlyFlatMapCacheImpl &&
            const DeepCollectionEquality().equals(other._flatMap, _flatMap) &&
            (identical(
                    other.availibleVariablesString, availibleVariablesString) ||
                other.availibleVariablesString == availibleVariablesString));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_flatMap), availibleVariablesString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithOnlyFlatMapCacheImplCopyWith<_$WithOnlyFlatMapCacheImpl>
      get copyWith =>
          __$$WithOnlyFlatMapCacheImplCopyWithImpl<_$WithOnlyFlatMapCacheImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)
        withOnlyFlatMapCache,
    required TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)
        withSugestionAndFlatMapCache,
  }) {
    return withOnlyFlatMapCache(flatMap, availibleVariablesString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult? Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
  }) {
    return withOnlyFlatMapCache?.call(flatMap, availibleVariablesString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) {
    if (withOnlyFlatMapCache != null) {
      return withOnlyFlatMapCache(flatMap, availibleVariablesString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithOnlyFlatMapCache value) withOnlyFlatMapCache,
    required TResult Function(WithSugestion value) withSugestionAndFlatMapCache,
  }) {
    return withOnlyFlatMapCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult? Function(WithSugestion value)? withSugestionAndFlatMapCache,
  }) {
    return withOnlyFlatMapCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult Function(WithSugestion value)? withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) {
    if (withOnlyFlatMapCache != null) {
      return withOnlyFlatMapCache(this);
    }
    return orElse();
  }
}

abstract class WithOnlyFlatMapCache implements SugestionState {
  factory WithOnlyFlatMapCache(
          {required final Map<String, TokenIdentifier> flatMap,
          required final String availibleVariablesString}) =
      _$WithOnlyFlatMapCacheImpl;

  @override
  Map<String, TokenIdentifier> get flatMap;
  @override
  String get availibleVariablesString;
  @override
  @JsonKey(ignore: true)
  _$$WithOnlyFlatMapCacheImplCopyWith<_$WithOnlyFlatMapCacheImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WithSugestionImplCopyWith<$Res>
    implements $SugestionStateCopyWith<$Res> {
  factory _$$WithSugestionImplCopyWith(
          _$WithSugestionImpl value, $Res Function(_$WithSugestionImpl) then) =
      __$$WithSugestionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, TokenIdentifier> flatMap,
      String availibleVariablesString,
      Set<TokenIdentifier> tokenIdentifiers});
}

/// @nodoc
class __$$WithSugestionImplCopyWithImpl<$Res>
    extends _$SugestionStateCopyWithImpl<$Res, _$WithSugestionImpl>
    implements _$$WithSugestionImplCopyWith<$Res> {
  __$$WithSugestionImplCopyWithImpl(
      _$WithSugestionImpl _value, $Res Function(_$WithSugestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flatMap = null,
    Object? availibleVariablesString = null,
    Object? tokenIdentifiers = null,
  }) {
    return _then(_$WithSugestionImpl(
      flatMap: null == flatMap
          ? _value._flatMap
          : flatMap // ignore: cast_nullable_to_non_nullable
              as Map<String, TokenIdentifier>,
      availibleVariablesString: null == availibleVariablesString
          ? _value.availibleVariablesString
          : availibleVariablesString // ignore: cast_nullable_to_non_nullable
              as String,
      tokenIdentifiers: null == tokenIdentifiers
          ? _value._tokenIdentifiers
          : tokenIdentifiers // ignore: cast_nullable_to_non_nullable
              as Set<TokenIdentifier>,
    ));
  }
}

/// @nodoc

class _$WithSugestionImpl implements WithSugestion {
  _$WithSugestionImpl(
      {required final Map<String, TokenIdentifier> flatMap,
      required this.availibleVariablesString,
      required final Set<TokenIdentifier> tokenIdentifiers})
      : _flatMap = flatMap,
        _tokenIdentifiers = tokenIdentifiers;

  final Map<String, TokenIdentifier> _flatMap;
  @override
  Map<String, TokenIdentifier> get flatMap {
    if (_flatMap is EqualUnmodifiableMapView) return _flatMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_flatMap);
  }

  @override
  final String availibleVariablesString;
  final Set<TokenIdentifier> _tokenIdentifiers;
  @override
  Set<TokenIdentifier> get tokenIdentifiers {
    if (_tokenIdentifiers is EqualUnmodifiableSetView) return _tokenIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tokenIdentifiers);
  }

  @override
  String toString() {
    return 'SugestionState.withSugestionAndFlatMapCache(flatMap: $flatMap, availibleVariablesString: $availibleVariablesString, tokenIdentifiers: $tokenIdentifiers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithSugestionImpl &&
            const DeepCollectionEquality().equals(other._flatMap, _flatMap) &&
            (identical(
                    other.availibleVariablesString, availibleVariablesString) ||
                other.availibleVariablesString == availibleVariablesString) &&
            const DeepCollectionEquality()
                .equals(other._tokenIdentifiers, _tokenIdentifiers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_flatMap),
      availibleVariablesString,
      const DeepCollectionEquality().hash(_tokenIdentifiers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WithSugestionImplCopyWith<_$WithSugestionImpl> get copyWith =>
      __$$WithSugestionImplCopyWithImpl<_$WithSugestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)
        withOnlyFlatMapCache,
    required TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)
        withSugestionAndFlatMapCache,
  }) {
    return withSugestionAndFlatMapCache(
        flatMap, availibleVariablesString, tokenIdentifiers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult? Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
  }) {
    return withSugestionAndFlatMapCache?.call(
        flatMap, availibleVariablesString, tokenIdentifiers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString)?
        withOnlyFlatMapCache,
    TResult Function(
            Map<String, TokenIdentifier> flatMap,
            String availibleVariablesString,
            Set<TokenIdentifier> tokenIdentifiers)?
        withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) {
    if (withSugestionAndFlatMapCache != null) {
      return withSugestionAndFlatMapCache(
          flatMap, availibleVariablesString, tokenIdentifiers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WithOnlyFlatMapCache value) withOnlyFlatMapCache,
    required TResult Function(WithSugestion value) withSugestionAndFlatMapCache,
  }) {
    return withSugestionAndFlatMapCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult? Function(WithSugestion value)? withSugestionAndFlatMapCache,
  }) {
    return withSugestionAndFlatMapCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WithOnlyFlatMapCache value)? withOnlyFlatMapCache,
    TResult Function(WithSugestion value)? withSugestionAndFlatMapCache,
    required TResult orElse(),
  }) {
    if (withSugestionAndFlatMapCache != null) {
      return withSugestionAndFlatMapCache(this);
    }
    return orElse();
  }
}

abstract class WithSugestion implements SugestionState {
  factory WithSugestion(
          {required final Map<String, TokenIdentifier> flatMap,
          required final String availibleVariablesString,
          required final Set<TokenIdentifier> tokenIdentifiers}) =
      _$WithSugestionImpl;

  @override
  Map<String, TokenIdentifier> get flatMap;
  @override
  String get availibleVariablesString;
  Set<TokenIdentifier> get tokenIdentifiers;
  @override
  @JsonKey(ignore: true)
  _$$WithSugestionImplCopyWith<_$WithSugestionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
