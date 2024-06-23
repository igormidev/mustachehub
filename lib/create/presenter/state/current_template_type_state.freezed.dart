// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_template_type_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrentTemplateTypeState _$CurrentTemplateTypeStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'loading':
      return _CurrentTemplateTypeStateLoading.fromJson(json);
    case 'creating':
      return _CurrentTemplateTypeStateWithNewTemplate.fromJson(json);
    case 'withExistingTemplate':
      return _CurrentTemplateTypeStateWithExistingTemplate.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'CurrentTemplateTypeState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CurrentTemplateTypeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Template template) withExistingTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Template template)? withExistingTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Template template)? withExistingTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentTemplateTypeStateLoading value) loading,
    required TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)
        creating,
    required TResult Function(
            _CurrentTemplateTypeStateWithExistingTemplate value)
        withExistingTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult? Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult? Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentTemplateTypeStateCopyWith<$Res> {
  factory $CurrentTemplateTypeStateCopyWith(CurrentTemplateTypeState value,
          $Res Function(CurrentTemplateTypeState) then) =
      _$CurrentTemplateTypeStateCopyWithImpl<$Res, CurrentTemplateTypeState>;
}

/// @nodoc
class _$CurrentTemplateTypeStateCopyWithImpl<$Res,
        $Val extends CurrentTemplateTypeState>
    implements $CurrentTemplateTypeStateCopyWith<$Res> {
  _$CurrentTemplateTypeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CurrentTemplateTypeStateLoadingImplCopyWith<$Res> {
  factory _$$CurrentTemplateTypeStateLoadingImplCopyWith(
          _$CurrentTemplateTypeStateLoadingImpl value,
          $Res Function(_$CurrentTemplateTypeStateLoadingImpl) then) =
      __$$CurrentTemplateTypeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentTemplateTypeStateLoadingImplCopyWithImpl<$Res>
    extends _$CurrentTemplateTypeStateCopyWithImpl<$Res,
        _$CurrentTemplateTypeStateLoadingImpl>
    implements _$$CurrentTemplateTypeStateLoadingImplCopyWith<$Res> {
  __$$CurrentTemplateTypeStateLoadingImplCopyWithImpl(
      _$CurrentTemplateTypeStateLoadingImpl _value,
      $Res Function(_$CurrentTemplateTypeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CurrentTemplateTypeStateLoadingImpl
    implements _CurrentTemplateTypeStateLoading {
  _$CurrentTemplateTypeStateLoadingImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$CurrentTemplateTypeStateLoadingImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentTemplateTypeStateLoadingImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CurrentTemplateTypeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTemplateTypeStateLoadingImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Template template) withExistingTemplate,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Template template)? withExistingTemplate,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Template template)? withExistingTemplate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentTemplateTypeStateLoading value) loading,
    required TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)
        creating,
    required TResult Function(
            _CurrentTemplateTypeStateWithExistingTemplate value)
        withExistingTemplate,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult? Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult? Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTemplateTypeStateLoadingImplToJson(
      this,
    );
  }
}

abstract class _CurrentTemplateTypeStateLoading
    implements CurrentTemplateTypeState {
  factory _CurrentTemplateTypeStateLoading() =
      _$CurrentTemplateTypeStateLoadingImpl;

  factory _CurrentTemplateTypeStateLoading.fromJson(Map<String, dynamic> json) =
      _$CurrentTemplateTypeStateLoadingImpl.fromJson;
}

/// @nodoc
abstract class _$$CurrentTemplateTypeStateWithNewTemplateImplCopyWith<$Res> {
  factory _$$CurrentTemplateTypeStateWithNewTemplateImplCopyWith(
          _$CurrentTemplateTypeStateWithNewTemplateImpl value,
          $Res Function(_$CurrentTemplateTypeStateWithNewTemplateImpl) then) =
      __$$CurrentTemplateTypeStateWithNewTemplateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CurrentTemplateTypeStateWithNewTemplateImplCopyWithImpl<$Res>
    extends _$CurrentTemplateTypeStateCopyWithImpl<$Res,
        _$CurrentTemplateTypeStateWithNewTemplateImpl>
    implements _$$CurrentTemplateTypeStateWithNewTemplateImplCopyWith<$Res> {
  __$$CurrentTemplateTypeStateWithNewTemplateImplCopyWithImpl(
      _$CurrentTemplateTypeStateWithNewTemplateImpl _value,
      $Res Function(_$CurrentTemplateTypeStateWithNewTemplateImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CurrentTemplateTypeStateWithNewTemplateImpl
    implements _CurrentTemplateTypeStateWithNewTemplate {
  _$CurrentTemplateTypeStateWithNewTemplateImpl({final String? $type})
      : $type = $type ?? 'creating';

  factory _$CurrentTemplateTypeStateWithNewTemplateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentTemplateTypeStateWithNewTemplateImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CurrentTemplateTypeState.creating()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTemplateTypeStateWithNewTemplateImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Template template) withExistingTemplate,
  }) {
    return creating();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Template template)? withExistingTemplate,
  }) {
    return creating?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Template template)? withExistingTemplate,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentTemplateTypeStateLoading value) loading,
    required TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)
        creating,
    required TResult Function(
            _CurrentTemplateTypeStateWithExistingTemplate value)
        withExistingTemplate,
  }) {
    return creating(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult? Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult? Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
  }) {
    return creating?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
    required TResult orElse(),
  }) {
    if (creating != null) {
      return creating(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTemplateTypeStateWithNewTemplateImplToJson(
      this,
    );
  }
}

abstract class _CurrentTemplateTypeStateWithNewTemplate
    implements CurrentTemplateTypeState {
  factory _CurrentTemplateTypeStateWithNewTemplate() =
      _$CurrentTemplateTypeStateWithNewTemplateImpl;

  factory _CurrentTemplateTypeStateWithNewTemplate.fromJson(
          Map<String, dynamic> json) =
      _$CurrentTemplateTypeStateWithNewTemplateImpl.fromJson;
}

/// @nodoc
abstract class _$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWith<
    $Res> {
  factory _$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWith(
          _$CurrentTemplateTypeStateWithExistingTemplateImpl value,
          $Res Function(_$CurrentTemplateTypeStateWithExistingTemplateImpl)
              then) =
      __$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Template template});

  $TemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWithImpl<$Res>
    extends _$CurrentTemplateTypeStateCopyWithImpl<$Res,
        _$CurrentTemplateTypeStateWithExistingTemplateImpl>
    implements
        _$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWith<$Res> {
  __$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWithImpl(
      _$CurrentTemplateTypeStateWithExistingTemplateImpl _value,
      $Res Function(_$CurrentTemplateTypeStateWithExistingTemplateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$CurrentTemplateTypeStateWithExistingTemplateImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
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
class _$CurrentTemplateTypeStateWithExistingTemplateImpl
    implements _CurrentTemplateTypeStateWithExistingTemplate {
  _$CurrentTemplateTypeStateWithExistingTemplateImpl(
      {required this.template, final String? $type})
      : $type = $type ?? 'withExistingTemplate';

  factory _$CurrentTemplateTypeStateWithExistingTemplateImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$CurrentTemplateTypeStateWithExistingTemplateImplFromJson(json);

  @override
  final Template template;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CurrentTemplateTypeState.withExistingTemplate(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentTemplateTypeStateWithExistingTemplateImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, template);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWith<
          _$CurrentTemplateTypeStateWithExistingTemplateImpl>
      get copyWith =>
          __$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWithImpl<
                  _$CurrentTemplateTypeStateWithExistingTemplateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() creating,
    required TResult Function(Template template) withExistingTemplate,
  }) {
    return withExistingTemplate(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? creating,
    TResult? Function(Template template)? withExistingTemplate,
  }) {
    return withExistingTemplate?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? creating,
    TResult Function(Template template)? withExistingTemplate,
    required TResult orElse(),
  }) {
    if (withExistingTemplate != null) {
      return withExistingTemplate(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentTemplateTypeStateLoading value) loading,
    required TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)
        creating,
    required TResult Function(
            _CurrentTemplateTypeStateWithExistingTemplate value)
        withExistingTemplate,
  }) {
    return withExistingTemplate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult? Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult? Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
  }) {
    return withExistingTemplate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentTemplateTypeStateLoading value)? loading,
    TResult Function(_CurrentTemplateTypeStateWithNewTemplate value)? creating,
    TResult Function(_CurrentTemplateTypeStateWithExistingTemplate value)?
        withExistingTemplate,
    required TResult orElse(),
  }) {
    if (withExistingTemplate != null) {
      return withExistingTemplate(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CurrentTemplateTypeStateWithExistingTemplateImplToJson(
      this,
    );
  }
}

abstract class _CurrentTemplateTypeStateWithExistingTemplate
    implements CurrentTemplateTypeState {
  factory _CurrentTemplateTypeStateWithExistingTemplate(
          {required final Template template}) =
      _$CurrentTemplateTypeStateWithExistingTemplateImpl;

  factory _CurrentTemplateTypeStateWithExistingTemplate.fromJson(
          Map<String, dynamic> json) =
      _$CurrentTemplateTypeStateWithExistingTemplateImpl.fromJson;

  Template get template;
  @JsonKey(ignore: true)
  _$$CurrentTemplateTypeStateWithExistingTemplateImplCopyWith<
          _$CurrentTemplateTypeStateWithExistingTemplateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
