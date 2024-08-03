// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_output_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentOutputDto {
  List<ContentTextSectionInput> get contents =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentTextSectionInput> contents) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentTextSectionInput> contents)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentTextSectionInput> contents)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentOutputDtoString value) string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentOutputDtoString value)? string,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentOutputDtoString value)? string,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ContentOutputDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentOutputDtoCopyWith<ContentOutputDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentOutputDtoCopyWith<$Res> {
  factory $ContentOutputDtoCopyWith(
          ContentOutputDto value, $Res Function(ContentOutputDto) then) =
      _$ContentOutputDtoCopyWithImpl<$Res, ContentOutputDto>;
  @useResult
  $Res call({List<ContentTextSectionInput> contents});
}

/// @nodoc
class _$ContentOutputDtoCopyWithImpl<$Res, $Val extends ContentOutputDto>
    implements $ContentOutputDtoCopyWith<$Res> {
  _$ContentOutputDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentOutputDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentTextSectionInput>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentOutputDtoStringImplCopyWith<$Res>
    implements $ContentOutputDtoCopyWith<$Res> {
  factory _$$ContentOutputDtoStringImplCopyWith(
          _$ContentOutputDtoStringImpl value,
          $Res Function(_$ContentOutputDtoStringImpl) then) =
      __$$ContentOutputDtoStringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContentTextSectionInput> contents});
}

/// @nodoc
class __$$ContentOutputDtoStringImplCopyWithImpl<$Res>
    extends _$ContentOutputDtoCopyWithImpl<$Res, _$ContentOutputDtoStringImpl>
    implements _$$ContentOutputDtoStringImplCopyWith<$Res> {
  __$$ContentOutputDtoStringImplCopyWithImpl(
      _$ContentOutputDtoStringImpl _value,
      $Res Function(_$ContentOutputDtoStringImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentOutputDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
  }) {
    return _then(_$ContentOutputDtoStringImpl(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentTextSectionInput>,
    ));
  }
}

/// @nodoc

class _$ContentOutputDtoStringImpl implements _ContentOutputDtoString {
  _$ContentOutputDtoStringImpl(
      {required final List<ContentTextSectionInput> contents})
      : _contents = contents;

  final List<ContentTextSectionInput> _contents;
  @override
  List<ContentTextSectionInput> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'ContentOutputDto.string(contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentOutputDtoStringImpl &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contents));

  /// Create a copy of ContentOutputDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentOutputDtoStringImplCopyWith<_$ContentOutputDtoStringImpl>
      get copyWith => __$$ContentOutputDtoStringImplCopyWithImpl<
          _$ContentOutputDtoStringImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ContentTextSectionInput> contents) string,
  }) {
    return string(contents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ContentTextSectionInput> contents)? string,
  }) {
    return string?.call(contents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ContentTextSectionInput> contents)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(contents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContentOutputDtoString value) string,
  }) {
    return string(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ContentOutputDtoString value)? string,
  }) {
    return string?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContentOutputDtoString value)? string,
    required TResult orElse(),
  }) {
    if (string != null) {
      return string(this);
    }
    return orElse();
  }
}

abstract class _ContentOutputDtoString implements ContentOutputDto {
  factory _ContentOutputDtoString(
          {required final List<ContentTextSectionInput> contents}) =
      _$ContentOutputDtoStringImpl;

  @override
  List<ContentTextSectionInput> get contents;

  /// Create a copy of ContentOutputDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentOutputDtoStringImplCopyWith<_$ContentOutputDtoStringImpl>
      get copyWith => throw _privateConstructorUsedError;
}
