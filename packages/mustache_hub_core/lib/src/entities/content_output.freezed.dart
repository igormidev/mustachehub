// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_output.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentOutput _$ContentOutputFromJson(Map<String, dynamic> json) {
  return _ContentOutput.fromJson(json);
}

/// @nodoc
mixin _$ContentOutput {
  List<String> get texts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> texts) listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> texts)? listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> texts)? listOfTexts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentOutput value) listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentOutput value)? listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentOutput value)? listOfTexts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentOutputCopyWith<ContentOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentOutputCopyWith<$Res> {
  factory $ContentOutputCopyWith(
          ContentOutput value, $Res Function(ContentOutput) then) =
      _$ContentOutputCopyWithImpl<$Res, ContentOutput>;
  @useResult
  $Res call({List<String> texts});
}

/// @nodoc
class _$ContentOutputCopyWithImpl<$Res, $Val extends ContentOutput>
    implements $ContentOutputCopyWith<$Res> {
  _$ContentOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
  }) {
    return _then(_value.copyWith(
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentOutputImplCopyWith<$Res>
    implements $ContentOutputCopyWith<$Res> {
  factory _$$ContentOutputImplCopyWith(
          _$ContentOutputImpl value, $Res Function(_$ContentOutputImpl) then) =
      __$$ContentOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> texts});
}

/// @nodoc
class __$$ContentOutputImplCopyWithImpl<$Res>
    extends _$ContentOutputCopyWithImpl<$Res, _$ContentOutputImpl>
    implements _$$ContentOutputImplCopyWith<$Res> {
  __$$ContentOutputImplCopyWithImpl(
      _$ContentOutputImpl _value, $Res Function(_$ContentOutputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
  }) {
    return _then(_$ContentOutputImpl(
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentOutputImpl implements _ContentOutput {
  _$ContentOutputImpl({final List<String> texts = const ['']}) : _texts = texts;

  factory _$ContentOutputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentOutputImplFromJson(json);

  final List<String> _texts;
  @override
  @JsonKey()
  List<String> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  String toString() {
    return 'ContentOutput.listOfTexts(texts: $texts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentOutputImpl &&
            const DeepCollectionEquality().equals(other._texts, _texts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_texts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentOutputImplCopyWith<_$ContentOutputImpl> get copyWith =>
      __$$ContentOutputImplCopyWithImpl<_$ContentOutputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<String> texts) listOfTexts,
  }) {
    return listOfTexts(texts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<String> texts)? listOfTexts,
  }) {
    return listOfTexts?.call(texts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<String> texts)? listOfTexts,
    required TResult orElse(),
  }) {
    if (listOfTexts != null) {
      return listOfTexts(texts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentOutput value) listOfTexts,
  }) {
    return listOfTexts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentOutput value)? listOfTexts,
  }) {
    return listOfTexts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentOutput value)? listOfTexts,
    required TResult orElse(),
  }) {
    if (listOfTexts != null) {
      return listOfTexts(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentOutputImplToJson(
      this,
    );
  }
}

abstract class _ContentOutput implements ContentOutput {
  factory _ContentOutput({final List<String> texts}) = _$ContentOutputImpl;

  factory _ContentOutput.fromJson(Map<String, dynamic> json) =
      _$ContentOutputImpl.fromJson;

  @override
  List<String> get texts;
  @override
  @JsonKey(ignore: true)
  _$$ContentOutputImplCopyWith<_$ContentOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
