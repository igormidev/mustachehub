// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentInput _$ContentInputFromJson(Map<String, dynamic> json) {
  return _ContentInput.fromJson(json);
}

/// @nodoc
mixin _$ContentInput {
  List<ContentTextSectionInput> get texts => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentTextSectionInput> texts) listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentTextSectionInput> texts)? listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentTextSectionInput> texts)? listOfTexts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentInput value) listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentInput value)? listOfTexts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInput value)? listOfTexts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this ContentInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentInputCopyWith<ContentInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentInputCopyWith<$Res> {
  factory $ContentInputCopyWith(
          ContentInput value, $Res Function(ContentInput) then) =
      _$ContentInputCopyWithImpl<$Res, ContentInput>;
  @useResult
  $Res call({List<ContentTextSectionInput> texts});
}

/// @nodoc
class _$ContentInputCopyWithImpl<$Res, $Val extends ContentInput>
    implements $ContentInputCopyWith<$Res> {
  _$ContentInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
  }) {
    return _then(_value.copyWith(
      texts: null == texts
          ? _value.texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<ContentTextSectionInput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentInputImplCopyWith<$Res>
    implements $ContentInputCopyWith<$Res> {
  factory _$$ContentInputImplCopyWith(
          _$ContentInputImpl value, $Res Function(_$ContentInputImpl) then) =
      __$$ContentInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContentTextSectionInput> texts});
}

/// @nodoc
class __$$ContentInputImplCopyWithImpl<$Res>
    extends _$ContentInputCopyWithImpl<$Res, _$ContentInputImpl>
    implements _$$ContentInputImplCopyWith<$Res> {
  __$$ContentInputImplCopyWithImpl(
      _$ContentInputImpl _value, $Res Function(_$ContentInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? texts = null,
  }) {
    return _then(_$ContentInputImpl(
      texts: null == texts
          ? _value._texts
          : texts // ignore: cast_nullable_to_non_nullable
              as List<ContentTextSectionInput>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentInputImpl implements _ContentInput {
  _$ContentInputImpl({required final List<ContentTextSectionInput> texts})
      : _texts = texts;

  factory _$ContentInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentInputImplFromJson(json);

  final List<ContentTextSectionInput> _texts;
  @override
  List<ContentTextSectionInput> get texts {
    if (_texts is EqualUnmodifiableListView) return _texts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_texts);
  }

  @override
  String toString() {
    return 'ContentInput.listOfTexts(texts: $texts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentInputImpl &&
            const DeepCollectionEquality().equals(other._texts, _texts));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_texts));

  /// Create a copy of ContentInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentInputImplCopyWith<_$ContentInputImpl> get copyWith =>
      __$$ContentInputImplCopyWithImpl<_$ContentInputImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentTextSectionInput> texts) listOfTexts,
  }) {
    return listOfTexts(texts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentTextSectionInput> texts)? listOfTexts,
  }) {
    return listOfTexts?.call(texts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentTextSectionInput> texts)? listOfTexts,
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
    required TResult Function(_ContentInput value) listOfTexts,
  }) {
    return listOfTexts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentInput value)? listOfTexts,
  }) {
    return listOfTexts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentInput value)? listOfTexts,
    required TResult orElse(),
  }) {
    if (listOfTexts != null) {
      return listOfTexts(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentInputImplToJson(
      this,
    );
  }
}

abstract class _ContentInput implements ContentInput {
  factory _ContentInput({required final List<ContentTextSectionInput> texts}) =
      _$ContentInputImpl;

  factory _ContentInput.fromJson(Map<String, dynamic> json) =
      _$ContentInputImpl.fromJson;

  @override
  List<ContentTextSectionInput> get texts;

  /// Create a copy of ContentInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentInputImplCopyWith<_$ContentInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
