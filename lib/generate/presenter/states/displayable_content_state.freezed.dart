// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'displayable_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisplayableContentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextSpanExibitionDto> spans) listOfTexts,
    required TResult Function() none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult? Function()? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult Function()? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayableContentStateListOfTexts value)
        listOfTexts,
    required TResult Function(_DisplayableContentStateNone value) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult? Function(_DisplayableContentStateNone value)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult Function(_DisplayableContentStateNone value)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisplayableContentStateCopyWith<$Res> {
  factory $DisplayableContentStateCopyWith(DisplayableContentState value,
          $Res Function(DisplayableContentState) then) =
      _$DisplayableContentStateCopyWithImpl<$Res, DisplayableContentState>;
}

/// @nodoc
class _$DisplayableContentStateCopyWithImpl<$Res,
        $Val extends DisplayableContentState>
    implements $DisplayableContentStateCopyWith<$Res> {
  _$DisplayableContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisplayableContentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DisplayableContentStateListOfTextsImplCopyWith<$Res> {
  factory _$$DisplayableContentStateListOfTextsImplCopyWith(
          _$DisplayableContentStateListOfTextsImpl value,
          $Res Function(_$DisplayableContentStateListOfTextsImpl) then) =
      __$$DisplayableContentStateListOfTextsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TextSpanExibitionDto> spans});
}

/// @nodoc
class __$$DisplayableContentStateListOfTextsImplCopyWithImpl<$Res>
    extends _$DisplayableContentStateCopyWithImpl<$Res,
        _$DisplayableContentStateListOfTextsImpl>
    implements _$$DisplayableContentStateListOfTextsImplCopyWith<$Res> {
  __$$DisplayableContentStateListOfTextsImplCopyWithImpl(
      _$DisplayableContentStateListOfTextsImpl _value,
      $Res Function(_$DisplayableContentStateListOfTextsImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayableContentState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spans = null,
  }) {
    return _then(_$DisplayableContentStateListOfTextsImpl(
      spans: null == spans
          ? _value._spans
          : spans // ignore: cast_nullable_to_non_nullable
              as List<TextSpanExibitionDto>,
    ));
  }
}

/// @nodoc

class _$DisplayableContentStateListOfTextsImpl
    implements _DisplayableContentStateListOfTexts {
  _$DisplayableContentStateListOfTextsImpl(
      {required final List<TextSpanExibitionDto> spans})
      : _spans = spans;

  final List<TextSpanExibitionDto> _spans;
  @override
  List<TextSpanExibitionDto> get spans {
    if (_spans is EqualUnmodifiableListView) return _spans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spans);
  }

  @override
  String toString() {
    return 'DisplayableContentState.listOfTexts(spans: $spans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayableContentStateListOfTextsImpl &&
            const DeepCollectionEquality().equals(other._spans, _spans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_spans));

  /// Create a copy of DisplayableContentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisplayableContentStateListOfTextsImplCopyWith<
          _$DisplayableContentStateListOfTextsImpl>
      get copyWith => __$$DisplayableContentStateListOfTextsImplCopyWithImpl<
          _$DisplayableContentStateListOfTextsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextSpanExibitionDto> spans) listOfTexts,
    required TResult Function() none,
  }) {
    return listOfTexts(spans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult? Function()? none,
  }) {
    return listOfTexts?.call(spans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (listOfTexts != null) {
      return listOfTexts(spans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayableContentStateListOfTexts value)
        listOfTexts,
    required TResult Function(_DisplayableContentStateNone value) none,
  }) {
    return listOfTexts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult? Function(_DisplayableContentStateNone value)? none,
  }) {
    return listOfTexts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult Function(_DisplayableContentStateNone value)? none,
    required TResult orElse(),
  }) {
    if (listOfTexts != null) {
      return listOfTexts(this);
    }
    return orElse();
  }
}

abstract class _DisplayableContentStateListOfTexts
    implements DisplayableContentState {
  factory _DisplayableContentStateListOfTexts(
          {required final List<TextSpanExibitionDto> spans}) =
      _$DisplayableContentStateListOfTextsImpl;

  List<TextSpanExibitionDto> get spans;

  /// Create a copy of DisplayableContentState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisplayableContentStateListOfTextsImplCopyWith<
          _$DisplayableContentStateListOfTextsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayableContentStateNoneImplCopyWith<$Res> {
  factory _$$DisplayableContentStateNoneImplCopyWith(
          _$DisplayableContentStateNoneImpl value,
          $Res Function(_$DisplayableContentStateNoneImpl) then) =
      __$$DisplayableContentStateNoneImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayableContentStateNoneImplCopyWithImpl<$Res>
    extends _$DisplayableContentStateCopyWithImpl<$Res,
        _$DisplayableContentStateNoneImpl>
    implements _$$DisplayableContentStateNoneImplCopyWith<$Res> {
  __$$DisplayableContentStateNoneImplCopyWithImpl(
      _$DisplayableContentStateNoneImpl _value,
      $Res Function(_$DisplayableContentStateNoneImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisplayableContentState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisplayableContentStateNoneImpl
    implements _DisplayableContentStateNone {
  _$DisplayableContentStateNoneImpl();

  @override
  String toString() {
    return 'DisplayableContentState.none()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayableContentStateNoneImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TextSpanExibitionDto> spans) listOfTexts,
    required TResult Function() none,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult? Function()? none,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TextSpanExibitionDto> spans)? listOfTexts,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DisplayableContentStateListOfTexts value)
        listOfTexts,
    required TResult Function(_DisplayableContentStateNone value) none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult? Function(_DisplayableContentStateNone value)? none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DisplayableContentStateListOfTexts value)? listOfTexts,
    TResult Function(_DisplayableContentStateNone value)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }
}

abstract class _DisplayableContentStateNone implements DisplayableContentState {
  factory _DisplayableContentStateNone() = _$DisplayableContentStateNoneImpl;
}
