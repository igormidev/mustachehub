// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_text_section_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContentTextSectionInput _$ContentTextSectionInputFromJson(
    Map<String, dynamic> json) {
  return _ContentTextSectionInput.fromJson(json);
}

/// @nodoc
mixin _$ContentTextSectionInput {
  String get uuid => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get willBreakLine => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContentTextSectionInputCopyWith<ContentTextSectionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentTextSectionInputCopyWith<$Res> {
  factory $ContentTextSectionInputCopyWith(ContentTextSectionInput value,
          $Res Function(ContentTextSectionInput) then) =
      _$ContentTextSectionInputCopyWithImpl<$Res, ContentTextSectionInput>;
  @useResult
  $Res call({String uuid, String content, String title, bool willBreakLine});
}

/// @nodoc
class _$ContentTextSectionInputCopyWithImpl<$Res,
        $Val extends ContentTextSectionInput>
    implements $ContentTextSectionInputCopyWith<$Res> {
  _$ContentTextSectionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? content = null,
    Object? title = null,
    Object? willBreakLine = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      willBreakLine: null == willBreakLine
          ? _value.willBreakLine
          : willBreakLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentTextSectionInputImplCopyWith<$Res>
    implements $ContentTextSectionInputCopyWith<$Res> {
  factory _$$ContentTextSectionInputImplCopyWith(
          _$ContentTextSectionInputImpl value,
          $Res Function(_$ContentTextSectionInputImpl) then) =
      __$$ContentTextSectionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, String content, String title, bool willBreakLine});
}

/// @nodoc
class __$$ContentTextSectionInputImplCopyWithImpl<$Res>
    extends _$ContentTextSectionInputCopyWithImpl<$Res,
        _$ContentTextSectionInputImpl>
    implements _$$ContentTextSectionInputImplCopyWith<$Res> {
  __$$ContentTextSectionInputImplCopyWithImpl(
      _$ContentTextSectionInputImpl _value,
      $Res Function(_$ContentTextSectionInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? content = null,
    Object? title = null,
    Object? willBreakLine = null,
  }) {
    return _then(_$ContentTextSectionInputImpl(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      willBreakLine: null == willBreakLine
          ? _value.willBreakLine
          : willBreakLine // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentTextSectionInputImpl implements _ContentTextSectionInput {
  _$ContentTextSectionInputImpl(
      {required this.uuid,
      this.content = '',
      this.title = '',
      this.willBreakLine = true});

  factory _$ContentTextSectionInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentTextSectionInputImplFromJson(json);

  @override
  final String uuid;
  @override
  @JsonKey()
  final String content;
  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final bool willBreakLine;

  @override
  String toString() {
    return 'ContentTextSectionInput(uuid: $uuid, content: $content, title: $title, willBreakLine: $willBreakLine)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentTextSectionInputImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.willBreakLine, willBreakLine) ||
                other.willBreakLine == willBreakLine));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, uuid, content, title, willBreakLine);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentTextSectionInputImplCopyWith<_$ContentTextSectionInputImpl>
      get copyWith => __$$ContentTextSectionInputImplCopyWithImpl<
          _$ContentTextSectionInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentTextSectionInputImplToJson(
      this,
    );
  }
}

abstract class _ContentTextSectionInput implements ContentTextSectionInput {
  factory _ContentTextSectionInput(
      {required final String uuid,
      final String content,
      final String title,
      final bool willBreakLine}) = _$ContentTextSectionInputImpl;

  factory _ContentTextSectionInput.fromJson(Map<String, dynamic> json) =
      _$ContentTextSectionInputImpl.fromJson;

  @override
  String get uuid;
  @override
  String get content;
  @override
  String get title;
  @override
  bool get willBreakLine;
  @override
  @JsonKey(ignore: true)
  _$$ContentTextSectionInputImplCopyWith<_$ContentTextSectionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
