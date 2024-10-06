// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_span_exibition_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TextSpanExibitionDto {
  ContentTextSectionInput get content => throw _privateConstructorUsedError;
  Set<String> get requiredFields => throw _privateConstructorUsedError;
  List<InlineSpan> get spans => throw _privateConstructorUsedError;

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TextSpanExibitionDtoCopyWith<TextSpanExibitionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextSpanExibitionDtoCopyWith<$Res> {
  factory $TextSpanExibitionDtoCopyWith(TextSpanExibitionDto value,
          $Res Function(TextSpanExibitionDto) then) =
      _$TextSpanExibitionDtoCopyWithImpl<$Res, TextSpanExibitionDto>;
  @useResult
  $Res call(
      {ContentTextSectionInput content,
      Set<String> requiredFields,
      List<InlineSpan> spans});

  $ContentTextSectionInputCopyWith<$Res> get content;
}

/// @nodoc
class _$TextSpanExibitionDtoCopyWithImpl<$Res,
        $Val extends TextSpanExibitionDto>
    implements $TextSpanExibitionDtoCopyWith<$Res> {
  _$TextSpanExibitionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? requiredFields = null,
    Object? spans = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ContentTextSectionInput,
      requiredFields: null == requiredFields
          ? _value.requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      spans: null == spans
          ? _value.spans
          : spans // ignore: cast_nullable_to_non_nullable
              as List<InlineSpan>,
    ) as $Val);
  }

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContentTextSectionInputCopyWith<$Res> get content {
    return $ContentTextSectionInputCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TextSpanExibitionDtoImplCopyWith<$Res>
    implements $TextSpanExibitionDtoCopyWith<$Res> {
  factory _$$TextSpanExibitionDtoImplCopyWith(_$TextSpanExibitionDtoImpl value,
          $Res Function(_$TextSpanExibitionDtoImpl) then) =
      __$$TextSpanExibitionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ContentTextSectionInput content,
      Set<String> requiredFields,
      List<InlineSpan> spans});

  @override
  $ContentTextSectionInputCopyWith<$Res> get content;
}

/// @nodoc
class __$$TextSpanExibitionDtoImplCopyWithImpl<$Res>
    extends _$TextSpanExibitionDtoCopyWithImpl<$Res, _$TextSpanExibitionDtoImpl>
    implements _$$TextSpanExibitionDtoImplCopyWith<$Res> {
  __$$TextSpanExibitionDtoImplCopyWithImpl(_$TextSpanExibitionDtoImpl _value,
      $Res Function(_$TextSpanExibitionDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? requiredFields = null,
    Object? spans = null,
  }) {
    return _then(_$TextSpanExibitionDtoImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as ContentTextSectionInput,
      requiredFields: null == requiredFields
          ? _value._requiredFields
          : requiredFields // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      spans: null == spans
          ? _value._spans
          : spans // ignore: cast_nullable_to_non_nullable
              as List<InlineSpan>,
    ));
  }
}

/// @nodoc

class _$TextSpanExibitionDtoImpl implements _TextSpanExibitionDto {
  _$TextSpanExibitionDtoImpl(
      {required this.content,
      required final Set<String> requiredFields,
      required final List<InlineSpan> spans})
      : _requiredFields = requiredFields,
        _spans = spans;

  @override
  final ContentTextSectionInput content;
  final Set<String> _requiredFields;
  @override
  Set<String> get requiredFields {
    if (_requiredFields is EqualUnmodifiableSetView) return _requiredFields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_requiredFields);
  }

  final List<InlineSpan> _spans;
  @override
  List<InlineSpan> get spans {
    if (_spans is EqualUnmodifiableListView) return _spans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_spans);
  }

  @override
  String toString() {
    return 'TextSpanExibitionDto(content: $content, requiredFields: $requiredFields, spans: $spans)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextSpanExibitionDtoImpl &&
            (identical(other.content, content) || other.content == content) &&
            const DeepCollectionEquality()
                .equals(other._requiredFields, _requiredFields) &&
            const DeepCollectionEquality().equals(other._spans, _spans));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      content,
      const DeepCollectionEquality().hash(_requiredFields),
      const DeepCollectionEquality().hash(_spans));

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TextSpanExibitionDtoImplCopyWith<_$TextSpanExibitionDtoImpl>
      get copyWith =>
          __$$TextSpanExibitionDtoImplCopyWithImpl<_$TextSpanExibitionDtoImpl>(
              this, _$identity);
}

abstract class _TextSpanExibitionDto implements TextSpanExibitionDto {
  factory _TextSpanExibitionDto(
      {required final ContentTextSectionInput content,
      required final Set<String> requiredFields,
      required final List<InlineSpan> spans}) = _$TextSpanExibitionDtoImpl;

  @override
  ContentTextSectionInput get content;
  @override
  Set<String> get requiredFields;
  @override
  List<InlineSpan> get spans;

  /// Create a copy of TextSpanExibitionDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TextSpanExibitionDtoImplCopyWith<_$TextSpanExibitionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
