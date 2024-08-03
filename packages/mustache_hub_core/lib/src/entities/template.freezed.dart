// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Template _$TemplateFromJson(Map<String, dynamic> json) {
  return _Template.fromJson(json);
}

/// @nodoc
mixin _$Template {
  String get id => throw _privateConstructorUsedError;
  PackageInfo get info => throw _privateConstructorUsedError;
  ContentInput get output => throw _privateConstructorUsedError;
  TemplateMetadata get metadata => throw _privateConstructorUsedError;
  ExpectedPayload get payload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemplateCopyWith<Template> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemplateCopyWith<$Res> {
  factory $TemplateCopyWith(Template value, $Res Function(Template) then) =
      _$TemplateCopyWithImpl<$Res, Template>;
  @useResult
  $Res call(
      {String id,
      PackageInfo info,
      ContentInput output,
      TemplateMetadata metadata,
      ExpectedPayload payload});

  $PackageInfoCopyWith<$Res> get info;
  $ContentInputCopyWith<$Res> get output;
  $TemplateMetadataCopyWith<$Res> get metadata;
  $ExpectedPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class _$TemplateCopyWithImpl<$Res, $Val extends Template>
    implements $TemplateCopyWith<$Res> {
  _$TemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? info = null,
    Object? output = null,
    Object? metadata = null,
    Object? payload = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as ContentInput,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TemplateMetadata,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ExpectedPayload,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageInfoCopyWith<$Res> get info {
    return $PackageInfoCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ContentInputCopyWith<$Res> get output {
    return $ContentInputCopyWith<$Res>(_value.output, (value) {
      return _then(_value.copyWith(output: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateMetadataCopyWith<$Res> get metadata {
    return $TemplateMetadataCopyWith<$Res>(_value.metadata, (value) {
      return _then(_value.copyWith(metadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExpectedPayloadCopyWith<$Res> get payload {
    return $ExpectedPayloadCopyWith<$Res>(_value.payload, (value) {
      return _then(_value.copyWith(payload: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TemplateImplCopyWith<$Res>
    implements $TemplateCopyWith<$Res> {
  factory _$$TemplateImplCopyWith(
          _$TemplateImpl value, $Res Function(_$TemplateImpl) then) =
      __$$TemplateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      PackageInfo info,
      ContentInput output,
      TemplateMetadata metadata,
      ExpectedPayload payload});

  @override
  $PackageInfoCopyWith<$Res> get info;
  @override
  $ContentInputCopyWith<$Res> get output;
  @override
  $TemplateMetadataCopyWith<$Res> get metadata;
  @override
  $ExpectedPayloadCopyWith<$Res> get payload;
}

/// @nodoc
class __$$TemplateImplCopyWithImpl<$Res>
    extends _$TemplateCopyWithImpl<$Res, _$TemplateImpl>
    implements _$$TemplateImplCopyWith<$Res> {
  __$$TemplateImplCopyWithImpl(
      _$TemplateImpl _value, $Res Function(_$TemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? info = null,
    Object? output = null,
    Object? metadata = null,
    Object? payload = null,
  }) {
    return _then(_$TemplateImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as PackageInfo,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as ContentInput,
      metadata: null == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as TemplateMetadata,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ExpectedPayload,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TemplateImpl implements _Template {
  _$TemplateImpl(
      {required this.id,
      required this.info,
      required this.output,
      required this.metadata,
      required this.payload});

  factory _$TemplateImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemplateImplFromJson(json);

  @override
  final String id;
  @override
  final PackageInfo info;
  @override
  final ContentInput output;
  @override
  final TemplateMetadata metadata;
  @override
  final ExpectedPayload payload;

  @override
  String toString() {
    return 'Template(id: $id, info: $info, output: $output, metadata: $metadata, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemplateImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.output, output) || other.output == output) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, info, output, metadata, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      __$$TemplateImplCopyWithImpl<_$TemplateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemplateImplToJson(
      this,
    );
  }
}

abstract class _Template implements Template {
  factory _Template(
      {required final String id,
      required final PackageInfo info,
      required final ContentInput output,
      required final TemplateMetadata metadata,
      required final ExpectedPayload payload}) = _$TemplateImpl;

  factory _Template.fromJson(Map<String, dynamic> json) =
      _$TemplateImpl.fromJson;

  @override
  String get id;
  @override
  PackageInfo get info;
  @override
  ContentInput get output;
  @override
  TemplateMetadata get metadata;
  @override
  ExpectedPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$TemplateImplCopyWith<_$TemplateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
