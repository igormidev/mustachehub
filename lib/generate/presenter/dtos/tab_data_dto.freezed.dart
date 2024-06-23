// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tab_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TabDataDto _$TabDataDtoFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'withContent':
      return _TabDataDtoWithContent.fromJson(json);
    case 'loadingContent':
      return _TabDataDtoLoadingContent.fromJson(json);
    case 'errorFetchingContent':
      return _TabDataDtoWithErrorFetchingContent.fromJson(json);
    case 'newTab':
      return _TabDataDtoNewTab.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TabDataDto',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TabDataDto {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)
        withContent,
    required TResult Function(String templateId) loadingContent,
    required TResult Function(String templateId) errorFetchingContent,
    required TResult Function() newTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult? Function(String templateId)? loadingContent,
    TResult? Function(String templateId)? errorFetchingContent,
    TResult? Function()? newTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult Function(String templateId)? loadingContent,
    TResult Function(String templateId)? errorFetchingContent,
    TResult Function()? newTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabDataDtoWithContent value) withContent,
    required TResult Function(_TabDataDtoLoadingContent value) loadingContent,
    required TResult Function(_TabDataDtoWithErrorFetchingContent value)
        errorFetchingContent,
    required TResult Function(_TabDataDtoNewTab value) newTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabDataDtoWithContent value)? withContent,
    TResult? Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult? Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult? Function(_TabDataDtoNewTab value)? newTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabDataDtoWithContent value)? withContent,
    TResult Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult Function(_TabDataDtoNewTab value)? newTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TabDataDtoCopyWith<$Res> {
  factory $TabDataDtoCopyWith(
          TabDataDto value, $Res Function(TabDataDto) then) =
      _$TabDataDtoCopyWithImpl<$Res, TabDataDto>;
}

/// @nodoc
class _$TabDataDtoCopyWithImpl<$Res, $Val extends TabDataDto>
    implements $TabDataDtoCopyWith<$Res> {
  _$TabDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TabDataDtoWithContentImplCopyWith<$Res> {
  factory _$$TabDataDtoWithContentImplCopyWith(
          _$TabDataDtoWithContentImpl value,
          $Res Function(_$TabDataDtoWithContentImpl) then) =
      __$$TabDataDtoWithContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String text, Template template, ExpectedPayloadDto expectedPayloadDto});

  $TemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$TabDataDtoWithContentImplCopyWithImpl<$Res>
    extends _$TabDataDtoCopyWithImpl<$Res, _$TabDataDtoWithContentImpl>
    implements _$$TabDataDtoWithContentImplCopyWith<$Res> {
  __$$TabDataDtoWithContentImplCopyWithImpl(_$TabDataDtoWithContentImpl _value,
      $Res Function(_$TabDataDtoWithContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? template = null,
    Object? expectedPayloadDto = null,
  }) {
    return _then(_$TabDataDtoWithContentImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
      expectedPayloadDto: null == expectedPayloadDto
          ? _value.expectedPayloadDto
          : expectedPayloadDto // ignore: cast_nullable_to_non_nullable
              as ExpectedPayloadDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res> get template {
    return $TemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TabDataDtoWithContentImpl implements _TabDataDtoWithContent {
  _$TabDataDtoWithContentImpl(
      {required this.text,
      required this.template,
      required this.expectedPayloadDto,
      final String? $type})
      : $type = $type ?? 'withContent';

  factory _$TabDataDtoWithContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabDataDtoWithContentImplFromJson(json);

  @override
  final String text;
  @override
  final Template template;
  @override
  final ExpectedPayloadDto expectedPayloadDto;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabDataDto.withContent(text: $text, template: $template, expectedPayloadDto: $expectedPayloadDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabDataDtoWithContentImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.template, template) ||
                other.template == template) &&
            (identical(other.expectedPayloadDto, expectedPayloadDto) ||
                other.expectedPayloadDto == expectedPayloadDto));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, template, expectedPayloadDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabDataDtoWithContentImplCopyWith<_$TabDataDtoWithContentImpl>
      get copyWith => __$$TabDataDtoWithContentImplCopyWithImpl<
          _$TabDataDtoWithContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)
        withContent,
    required TResult Function(String templateId) loadingContent,
    required TResult Function(String templateId) errorFetchingContent,
    required TResult Function() newTab,
  }) {
    return withContent(text, template, expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult? Function(String templateId)? loadingContent,
    TResult? Function(String templateId)? errorFetchingContent,
    TResult? Function()? newTab,
  }) {
    return withContent?.call(text, template, expectedPayloadDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult Function(String templateId)? loadingContent,
    TResult Function(String templateId)? errorFetchingContent,
    TResult Function()? newTab,
    required TResult orElse(),
  }) {
    if (withContent != null) {
      return withContent(text, template, expectedPayloadDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabDataDtoWithContent value) withContent,
    required TResult Function(_TabDataDtoLoadingContent value) loadingContent,
    required TResult Function(_TabDataDtoWithErrorFetchingContent value)
        errorFetchingContent,
    required TResult Function(_TabDataDtoNewTab value) newTab,
  }) {
    return withContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabDataDtoWithContent value)? withContent,
    TResult? Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult? Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult? Function(_TabDataDtoNewTab value)? newTab,
  }) {
    return withContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabDataDtoWithContent value)? withContent,
    TResult Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult Function(_TabDataDtoNewTab value)? newTab,
    required TResult orElse(),
  }) {
    if (withContent != null) {
      return withContent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TabDataDtoWithContentImplToJson(
      this,
    );
  }
}

abstract class _TabDataDtoWithContent implements TabDataDto {
  factory _TabDataDtoWithContent(
          {required final String text,
          required final Template template,
          required final ExpectedPayloadDto expectedPayloadDto}) =
      _$TabDataDtoWithContentImpl;

  factory _TabDataDtoWithContent.fromJson(Map<String, dynamic> json) =
      _$TabDataDtoWithContentImpl.fromJson;

  String get text;
  Template get template;
  ExpectedPayloadDto get expectedPayloadDto;
  @JsonKey(ignore: true)
  _$$TabDataDtoWithContentImplCopyWith<_$TabDataDtoWithContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabDataDtoLoadingContentImplCopyWith<$Res> {
  factory _$$TabDataDtoLoadingContentImplCopyWith(
          _$TabDataDtoLoadingContentImpl value,
          $Res Function(_$TabDataDtoLoadingContentImpl) then) =
      __$$TabDataDtoLoadingContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateId});
}

/// @nodoc
class __$$TabDataDtoLoadingContentImplCopyWithImpl<$Res>
    extends _$TabDataDtoCopyWithImpl<$Res, _$TabDataDtoLoadingContentImpl>
    implements _$$TabDataDtoLoadingContentImplCopyWith<$Res> {
  __$$TabDataDtoLoadingContentImplCopyWithImpl(
      _$TabDataDtoLoadingContentImpl _value,
      $Res Function(_$TabDataDtoLoadingContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
  }) {
    return _then(_$TabDataDtoLoadingContentImpl(
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabDataDtoLoadingContentImpl implements _TabDataDtoLoadingContent {
  _$TabDataDtoLoadingContentImpl(
      {required this.templateId, final String? $type})
      : $type = $type ?? 'loadingContent';

  factory _$TabDataDtoLoadingContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabDataDtoLoadingContentImplFromJson(json);

  @override
  final String templateId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabDataDto.loadingContent(templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabDataDtoLoadingContentImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabDataDtoLoadingContentImplCopyWith<_$TabDataDtoLoadingContentImpl>
      get copyWith => __$$TabDataDtoLoadingContentImplCopyWithImpl<
          _$TabDataDtoLoadingContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)
        withContent,
    required TResult Function(String templateId) loadingContent,
    required TResult Function(String templateId) errorFetchingContent,
    required TResult Function() newTab,
  }) {
    return loadingContent(templateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult? Function(String templateId)? loadingContent,
    TResult? Function(String templateId)? errorFetchingContent,
    TResult? Function()? newTab,
  }) {
    return loadingContent?.call(templateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult Function(String templateId)? loadingContent,
    TResult Function(String templateId)? errorFetchingContent,
    TResult Function()? newTab,
    required TResult orElse(),
  }) {
    if (loadingContent != null) {
      return loadingContent(templateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabDataDtoWithContent value) withContent,
    required TResult Function(_TabDataDtoLoadingContent value) loadingContent,
    required TResult Function(_TabDataDtoWithErrorFetchingContent value)
        errorFetchingContent,
    required TResult Function(_TabDataDtoNewTab value) newTab,
  }) {
    return loadingContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabDataDtoWithContent value)? withContent,
    TResult? Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult? Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult? Function(_TabDataDtoNewTab value)? newTab,
  }) {
    return loadingContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabDataDtoWithContent value)? withContent,
    TResult Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult Function(_TabDataDtoNewTab value)? newTab,
    required TResult orElse(),
  }) {
    if (loadingContent != null) {
      return loadingContent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TabDataDtoLoadingContentImplToJson(
      this,
    );
  }
}

abstract class _TabDataDtoLoadingContent implements TabDataDto {
  factory _TabDataDtoLoadingContent({required final String templateId}) =
      _$TabDataDtoLoadingContentImpl;

  factory _TabDataDtoLoadingContent.fromJson(Map<String, dynamic> json) =
      _$TabDataDtoLoadingContentImpl.fromJson;

  String get templateId;
  @JsonKey(ignore: true)
  _$$TabDataDtoLoadingContentImplCopyWith<_$TabDataDtoLoadingContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabDataDtoWithErrorFetchingContentImplCopyWith<$Res> {
  factory _$$TabDataDtoWithErrorFetchingContentImplCopyWith(
          _$TabDataDtoWithErrorFetchingContentImpl value,
          $Res Function(_$TabDataDtoWithErrorFetchingContentImpl) then) =
      __$$TabDataDtoWithErrorFetchingContentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String templateId});
}

/// @nodoc
class __$$TabDataDtoWithErrorFetchingContentImplCopyWithImpl<$Res>
    extends _$TabDataDtoCopyWithImpl<$Res,
        _$TabDataDtoWithErrorFetchingContentImpl>
    implements _$$TabDataDtoWithErrorFetchingContentImplCopyWith<$Res> {
  __$$TabDataDtoWithErrorFetchingContentImplCopyWithImpl(
      _$TabDataDtoWithErrorFetchingContentImpl _value,
      $Res Function(_$TabDataDtoWithErrorFetchingContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? templateId = null,
  }) {
    return _then(_$TabDataDtoWithErrorFetchingContentImpl(
      templateId: null == templateId
          ? _value.templateId
          : templateId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TabDataDtoWithErrorFetchingContentImpl
    implements _TabDataDtoWithErrorFetchingContent {
  _$TabDataDtoWithErrorFetchingContentImpl(
      {required this.templateId, final String? $type})
      : $type = $type ?? 'errorFetchingContent';

  factory _$TabDataDtoWithErrorFetchingContentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TabDataDtoWithErrorFetchingContentImplFromJson(json);

  @override
  final String templateId;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabDataDto.errorFetchingContent(templateId: $templateId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TabDataDtoWithErrorFetchingContentImpl &&
            (identical(other.templateId, templateId) ||
                other.templateId == templateId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, templateId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TabDataDtoWithErrorFetchingContentImplCopyWith<
          _$TabDataDtoWithErrorFetchingContentImpl>
      get copyWith => __$$TabDataDtoWithErrorFetchingContentImplCopyWithImpl<
          _$TabDataDtoWithErrorFetchingContentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)
        withContent,
    required TResult Function(String templateId) loadingContent,
    required TResult Function(String templateId) errorFetchingContent,
    required TResult Function() newTab,
  }) {
    return errorFetchingContent(templateId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult? Function(String templateId)? loadingContent,
    TResult? Function(String templateId)? errorFetchingContent,
    TResult? Function()? newTab,
  }) {
    return errorFetchingContent?.call(templateId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult Function(String templateId)? loadingContent,
    TResult Function(String templateId)? errorFetchingContent,
    TResult Function()? newTab,
    required TResult orElse(),
  }) {
    if (errorFetchingContent != null) {
      return errorFetchingContent(templateId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabDataDtoWithContent value) withContent,
    required TResult Function(_TabDataDtoLoadingContent value) loadingContent,
    required TResult Function(_TabDataDtoWithErrorFetchingContent value)
        errorFetchingContent,
    required TResult Function(_TabDataDtoNewTab value) newTab,
  }) {
    return errorFetchingContent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabDataDtoWithContent value)? withContent,
    TResult? Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult? Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult? Function(_TabDataDtoNewTab value)? newTab,
  }) {
    return errorFetchingContent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabDataDtoWithContent value)? withContent,
    TResult Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult Function(_TabDataDtoNewTab value)? newTab,
    required TResult orElse(),
  }) {
    if (errorFetchingContent != null) {
      return errorFetchingContent(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TabDataDtoWithErrorFetchingContentImplToJson(
      this,
    );
  }
}

abstract class _TabDataDtoWithErrorFetchingContent implements TabDataDto {
  factory _TabDataDtoWithErrorFetchingContent(
          {required final String templateId}) =
      _$TabDataDtoWithErrorFetchingContentImpl;

  factory _TabDataDtoWithErrorFetchingContent.fromJson(
          Map<String, dynamic> json) =
      _$TabDataDtoWithErrorFetchingContentImpl.fromJson;

  String get templateId;
  @JsonKey(ignore: true)
  _$$TabDataDtoWithErrorFetchingContentImplCopyWith<
          _$TabDataDtoWithErrorFetchingContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TabDataDtoNewTabImplCopyWith<$Res> {
  factory _$$TabDataDtoNewTabImplCopyWith(_$TabDataDtoNewTabImpl value,
          $Res Function(_$TabDataDtoNewTabImpl) then) =
      __$$TabDataDtoNewTabImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TabDataDtoNewTabImplCopyWithImpl<$Res>
    extends _$TabDataDtoCopyWithImpl<$Res, _$TabDataDtoNewTabImpl>
    implements _$$TabDataDtoNewTabImplCopyWith<$Res> {
  __$$TabDataDtoNewTabImplCopyWithImpl(_$TabDataDtoNewTabImpl _value,
      $Res Function(_$TabDataDtoNewTabImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$TabDataDtoNewTabImpl implements _TabDataDtoNewTab {
  _$TabDataDtoNewTabImpl({final String? $type}) : $type = $type ?? 'newTab';

  factory _$TabDataDtoNewTabImpl.fromJson(Map<String, dynamic> json) =>
      _$$TabDataDtoNewTabImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TabDataDto.newTab()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TabDataDtoNewTabImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)
        withContent,
    required TResult Function(String templateId) loadingContent,
    required TResult Function(String templateId) errorFetchingContent,
    required TResult Function() newTab,
  }) {
    return newTab();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult? Function(String templateId)? loadingContent,
    TResult? Function(String templateId)? errorFetchingContent,
    TResult? Function()? newTab,
  }) {
    return newTab?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Template template,
            ExpectedPayloadDto expectedPayloadDto)?
        withContent,
    TResult Function(String templateId)? loadingContent,
    TResult Function(String templateId)? errorFetchingContent,
    TResult Function()? newTab,
    required TResult orElse(),
  }) {
    if (newTab != null) {
      return newTab();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TabDataDtoWithContent value) withContent,
    required TResult Function(_TabDataDtoLoadingContent value) loadingContent,
    required TResult Function(_TabDataDtoWithErrorFetchingContent value)
        errorFetchingContent,
    required TResult Function(_TabDataDtoNewTab value) newTab,
  }) {
    return newTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TabDataDtoWithContent value)? withContent,
    TResult? Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult? Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult? Function(_TabDataDtoNewTab value)? newTab,
  }) {
    return newTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TabDataDtoWithContent value)? withContent,
    TResult Function(_TabDataDtoLoadingContent value)? loadingContent,
    TResult Function(_TabDataDtoWithErrorFetchingContent value)?
        errorFetchingContent,
    TResult Function(_TabDataDtoNewTab value)? newTab,
    required TResult orElse(),
  }) {
    if (newTab != null) {
      return newTab(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TabDataDtoNewTabImplToJson(
      this,
    );
  }
}

abstract class _TabDataDtoNewTab implements TabDataDto {
  factory _TabDataDtoNewTab() = _$TabDataDtoNewTabImpl;

  factory _TabDataDtoNewTab.fromJson(Map<String, dynamic> json) =
      _$TabDataDtoNewTabImpl.fromJson;
}
