// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'suggestion_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SuggestionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)
        withIdentifiers,
    required TResult Function() undefined,
    required TResult Function() errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult? Function()? undefined,
    TResult? Function()? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult Function()? undefined,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionStateWithIdentifiers value)
        withIdentifiers,
    required TResult Function(_SuggestionStateUndefined value) undefined,
    required TResult Function(_SuggestionStateErrorOccurred value)
        errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult? Function(_SuggestionStateUndefined value)? undefined,
    TResult? Function(_SuggestionStateErrorOccurred value)? errorOccurred,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult Function(_SuggestionStateUndefined value)? undefined,
    TResult Function(_SuggestionStateErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SuggestionStateCopyWith<$Res> {
  factory $SuggestionStateCopyWith(
          SuggestionState value, $Res Function(SuggestionState) then) =
      _$SuggestionStateCopyWithImpl<$Res, SuggestionState>;
}

/// @nodoc
class _$SuggestionStateCopyWithImpl<$Res, $Val extends SuggestionState>
    implements $SuggestionStateCopyWith<$Res> {
  _$SuggestionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuggestionStateWithIdentifiersImplCopyWith<$Res> {
  factory _$$SuggestionStateWithIdentifiersImplCopyWith(
          _$SuggestionStateWithIdentifiersImpl value,
          $Res Function(_$SuggestionStateWithIdentifiersImpl) then) =
      __$$SuggestionStateWithIdentifiersImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Set<VariableImplementation> tokenIdentifiers,
      List<AnalysedSegment> segments});
}

/// @nodoc
class __$$SuggestionStateWithIdentifiersImplCopyWithImpl<$Res>
    extends _$SuggestionStateCopyWithImpl<$Res,
        _$SuggestionStateWithIdentifiersImpl>
    implements _$$SuggestionStateWithIdentifiersImplCopyWith<$Res> {
  __$$SuggestionStateWithIdentifiersImplCopyWithImpl(
      _$SuggestionStateWithIdentifiersImpl _value,
      $Res Function(_$SuggestionStateWithIdentifiersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenIdentifiers = null,
    Object? segments = null,
  }) {
    return _then(_$SuggestionStateWithIdentifiersImpl(
      tokenIdentifiers: null == tokenIdentifiers
          ? _value._tokenIdentifiers
          : tokenIdentifiers // ignore: cast_nullable_to_non_nullable
              as Set<VariableImplementation>,
      segments: null == segments
          ? _value._segments
          : segments // ignore: cast_nullable_to_non_nullable
              as List<AnalysedSegment>,
    ));
  }
}

/// @nodoc

class _$SuggestionStateWithIdentifiersImpl
    implements _SuggestionStateWithIdentifiers {
  _$SuggestionStateWithIdentifiersImpl(
      {required final Set<VariableImplementation> tokenIdentifiers,
      required final List<AnalysedSegment> segments})
      : _tokenIdentifiers = tokenIdentifiers,
        _segments = segments;

  final Set<VariableImplementation> _tokenIdentifiers;
  @override
  Set<VariableImplementation> get tokenIdentifiers {
    if (_tokenIdentifiers is EqualUnmodifiableSetView) return _tokenIdentifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_tokenIdentifiers);
  }

  final List<AnalysedSegment> _segments;
  @override
  List<AnalysedSegment> get segments {
    if (_segments is EqualUnmodifiableListView) return _segments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_segments);
  }

  @override
  String toString() {
    return 'SuggestionState.withIdentifiers(tokenIdentifiers: $tokenIdentifiers, segments: $segments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionStateWithIdentifiersImpl &&
            const DeepCollectionEquality()
                .equals(other._tokenIdentifiers, _tokenIdentifiers) &&
            const DeepCollectionEquality().equals(other._segments, _segments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tokenIdentifiers),
      const DeepCollectionEquality().hash(_segments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuggestionStateWithIdentifiersImplCopyWith<
          _$SuggestionStateWithIdentifiersImpl>
      get copyWith => __$$SuggestionStateWithIdentifiersImplCopyWithImpl<
          _$SuggestionStateWithIdentifiersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)
        withIdentifiers,
    required TResult Function() undefined,
    required TResult Function() errorOccurred,
  }) {
    return withIdentifiers(tokenIdentifiers, segments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult? Function()? undefined,
    TResult? Function()? errorOccurred,
  }) {
    return withIdentifiers?.call(tokenIdentifiers, segments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult Function()? undefined,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (withIdentifiers != null) {
      return withIdentifiers(tokenIdentifiers, segments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionStateWithIdentifiers value)
        withIdentifiers,
    required TResult Function(_SuggestionStateUndefined value) undefined,
    required TResult Function(_SuggestionStateErrorOccurred value)
        errorOccurred,
  }) {
    return withIdentifiers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult? Function(_SuggestionStateUndefined value)? undefined,
    TResult? Function(_SuggestionStateErrorOccurred value)? errorOccurred,
  }) {
    return withIdentifiers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult Function(_SuggestionStateUndefined value)? undefined,
    TResult Function(_SuggestionStateErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (withIdentifiers != null) {
      return withIdentifiers(this);
    }
    return orElse();
  }
}

abstract class _SuggestionStateWithIdentifiers implements SuggestionState {
  factory _SuggestionStateWithIdentifiers(
          {required final Set<VariableImplementation> tokenIdentifiers,
          required final List<AnalysedSegment> segments}) =
      _$SuggestionStateWithIdentifiersImpl;

  Set<VariableImplementation> get tokenIdentifiers;
  List<AnalysedSegment> get segments;
  @JsonKey(ignore: true)
  _$$SuggestionStateWithIdentifiersImplCopyWith<
          _$SuggestionStateWithIdentifiersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuggestionStateUndefinedImplCopyWith<$Res> {
  factory _$$SuggestionStateUndefinedImplCopyWith(
          _$SuggestionStateUndefinedImpl value,
          $Res Function(_$SuggestionStateUndefinedImpl) then) =
      __$$SuggestionStateUndefinedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuggestionStateUndefinedImplCopyWithImpl<$Res>
    extends _$SuggestionStateCopyWithImpl<$Res, _$SuggestionStateUndefinedImpl>
    implements _$$SuggestionStateUndefinedImplCopyWith<$Res> {
  __$$SuggestionStateUndefinedImplCopyWithImpl(
      _$SuggestionStateUndefinedImpl _value,
      $Res Function(_$SuggestionStateUndefinedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuggestionStateUndefinedImpl implements _SuggestionStateUndefined {
  _$SuggestionStateUndefinedImpl();

  @override
  String toString() {
    return 'SuggestionState.undefined()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionStateUndefinedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)
        withIdentifiers,
    required TResult Function() undefined,
    required TResult Function() errorOccurred,
  }) {
    return undefined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult? Function()? undefined,
    TResult? Function()? errorOccurred,
  }) {
    return undefined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult Function()? undefined,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionStateWithIdentifiers value)
        withIdentifiers,
    required TResult Function(_SuggestionStateUndefined value) undefined,
    required TResult Function(_SuggestionStateErrorOccurred value)
        errorOccurred,
  }) {
    return undefined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult? Function(_SuggestionStateUndefined value)? undefined,
    TResult? Function(_SuggestionStateErrorOccurred value)? errorOccurred,
  }) {
    return undefined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult Function(_SuggestionStateUndefined value)? undefined,
    TResult Function(_SuggestionStateErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (undefined != null) {
      return undefined(this);
    }
    return orElse();
  }
}

abstract class _SuggestionStateUndefined implements SuggestionState {
  factory _SuggestionStateUndefined() = _$SuggestionStateUndefinedImpl;
}

/// @nodoc
abstract class _$$SuggestionStateErrorOccurredImplCopyWith<$Res> {
  factory _$$SuggestionStateErrorOccurredImplCopyWith(
          _$SuggestionStateErrorOccurredImpl value,
          $Res Function(_$SuggestionStateErrorOccurredImpl) then) =
      __$$SuggestionStateErrorOccurredImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SuggestionStateErrorOccurredImplCopyWithImpl<$Res>
    extends _$SuggestionStateCopyWithImpl<$Res,
        _$SuggestionStateErrorOccurredImpl>
    implements _$$SuggestionStateErrorOccurredImplCopyWith<$Res> {
  __$$SuggestionStateErrorOccurredImplCopyWithImpl(
      _$SuggestionStateErrorOccurredImpl _value,
      $Res Function(_$SuggestionStateErrorOccurredImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SuggestionStateErrorOccurredImpl
    implements _SuggestionStateErrorOccurred {
  _$SuggestionStateErrorOccurredImpl();

  @override
  String toString() {
    return 'SuggestionState.errorOccurred()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuggestionStateErrorOccurredImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)
        withIdentifiers,
    required TResult Function() undefined,
    required TResult Function() errorOccurred,
  }) {
    return errorOccurred();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult? Function()? undefined,
    TResult? Function()? errorOccurred,
  }) {
    return errorOccurred?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Set<VariableImplementation> tokenIdentifiers,
            List<AnalysedSegment> segments)?
        withIdentifiers,
    TResult Function()? undefined,
    TResult Function()? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SuggestionStateWithIdentifiers value)
        withIdentifiers,
    required TResult Function(_SuggestionStateUndefined value) undefined,
    required TResult Function(_SuggestionStateErrorOccurred value)
        errorOccurred,
  }) {
    return errorOccurred(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult? Function(_SuggestionStateUndefined value)? undefined,
    TResult? Function(_SuggestionStateErrorOccurred value)? errorOccurred,
  }) {
    return errorOccurred?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SuggestionStateWithIdentifiers value)? withIdentifiers,
    TResult Function(_SuggestionStateUndefined value)? undefined,
    TResult Function(_SuggestionStateErrorOccurred value)? errorOccurred,
    required TResult orElse(),
  }) {
    if (errorOccurred != null) {
      return errorOccurred(this);
    }
    return orElse();
  }
}

abstract class _SuggestionStateErrorOccurred implements SuggestionState {
  factory _SuggestionStateErrorOccurred() = _$SuggestionStateErrorOccurredImpl;
}
