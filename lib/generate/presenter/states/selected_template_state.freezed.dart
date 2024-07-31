// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'selected_template_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SelectedTemplateState _$SelectedTemplateStateFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'withData':
      return _SelectedTemplateStateWithData.fromJson(json);
    case 'unselected':
      return _SelectedTemplateStateUnselected.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'SelectedTemplateState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$SelectedTemplateState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) withData,
    required TResult Function() unselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? withData,
    TResult? Function()? unselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? withData,
    TResult Function()? unselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedTemplateStateWithData value) withData,
    required TResult Function(_SelectedTemplateStateUnselected value)
        unselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedTemplateStateWithData value)? withData,
    TResult? Function(_SelectedTemplateStateUnselected value)? unselected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedTemplateStateWithData value)? withData,
    TResult Function(_SelectedTemplateStateUnselected value)? unselected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this SelectedTemplateState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedTemplateStateCopyWith<$Res> {
  factory $SelectedTemplateStateCopyWith(SelectedTemplateState value,
          $Res Function(SelectedTemplateState) then) =
      _$SelectedTemplateStateCopyWithImpl<$Res, SelectedTemplateState>;
}

/// @nodoc
class _$SelectedTemplateStateCopyWithImpl<$Res,
        $Val extends SelectedTemplateState>
    implements $SelectedTemplateStateCopyWith<$Res> {
  _$SelectedTemplateStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SelectedTemplateStateWithDataImplCopyWith<$Res> {
  factory _$$SelectedTemplateStateWithDataImplCopyWith(
          _$SelectedTemplateStateWithDataImpl value,
          $Res Function(_$SelectedTemplateStateWithDataImpl) then) =
      __$$SelectedTemplateStateWithDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Template template});

  $TemplateCopyWith<$Res> get template;
}

/// @nodoc
class __$$SelectedTemplateStateWithDataImplCopyWithImpl<$Res>
    extends _$SelectedTemplateStateCopyWithImpl<$Res,
        _$SelectedTemplateStateWithDataImpl>
    implements _$$SelectedTemplateStateWithDataImplCopyWith<$Res> {
  __$$SelectedTemplateStateWithDataImplCopyWithImpl(
      _$SelectedTemplateStateWithDataImpl _value,
      $Res Function(_$SelectedTemplateStateWithDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? template = null,
  }) {
    return _then(_$SelectedTemplateStateWithDataImpl(
      template: null == template
          ? _value.template
          : template // ignore: cast_nullable_to_non_nullable
              as Template,
    ));
  }

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TemplateCopyWith<$Res> get template {
    return $TemplateCopyWith<$Res>(_value.template, (value) {
      return _then(_value.copyWith(template: value));
    });
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$SelectedTemplateStateWithDataImpl
    implements _SelectedTemplateStateWithData {
  _$SelectedTemplateStateWithDataImpl(
      {required this.template, final String? $type})
      : $type = $type ?? 'withData';

  factory _$SelectedTemplateStateWithDataImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SelectedTemplateStateWithDataImplFromJson(json);

  @override
  final Template template;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SelectedTemplateState.withData(template: $template)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedTemplateStateWithDataImpl &&
            (identical(other.template, template) ||
                other.template == template));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, template);

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedTemplateStateWithDataImplCopyWith<
          _$SelectedTemplateStateWithDataImpl>
      get copyWith => __$$SelectedTemplateStateWithDataImplCopyWithImpl<
          _$SelectedTemplateStateWithDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) withData,
    required TResult Function() unselected,
  }) {
    return withData(template);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? withData,
    TResult? Function()? unselected,
  }) {
    return withData?.call(template);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? withData,
    TResult Function()? unselected,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(template);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedTemplateStateWithData value) withData,
    required TResult Function(_SelectedTemplateStateUnselected value)
        unselected,
  }) {
    return withData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedTemplateStateWithData value)? withData,
    TResult? Function(_SelectedTemplateStateUnselected value)? unselected,
  }) {
    return withData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedTemplateStateWithData value)? withData,
    TResult Function(_SelectedTemplateStateUnselected value)? unselected,
    required TResult orElse(),
  }) {
    if (withData != null) {
      return withData(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedTemplateStateWithDataImplToJson(
      this,
    );
  }
}

abstract class _SelectedTemplateStateWithData implements SelectedTemplateState {
  factory _SelectedTemplateStateWithData({required final Template template}) =
      _$SelectedTemplateStateWithDataImpl;

  factory _SelectedTemplateStateWithData.fromJson(Map<String, dynamic> json) =
      _$SelectedTemplateStateWithDataImpl.fromJson;

  Template get template;

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SelectedTemplateStateWithDataImplCopyWith<
          _$SelectedTemplateStateWithDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedTemplateStateUnselectedImplCopyWith<$Res> {
  factory _$$SelectedTemplateStateUnselectedImplCopyWith(
          _$SelectedTemplateStateUnselectedImpl value,
          $Res Function(_$SelectedTemplateStateUnselectedImpl) then) =
      __$$SelectedTemplateStateUnselectedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectedTemplateStateUnselectedImplCopyWithImpl<$Res>
    extends _$SelectedTemplateStateCopyWithImpl<$Res,
        _$SelectedTemplateStateUnselectedImpl>
    implements _$$SelectedTemplateStateUnselectedImplCopyWith<$Res> {
  __$$SelectedTemplateStateUnselectedImplCopyWithImpl(
      _$SelectedTemplateStateUnselectedImpl _value,
      $Res Function(_$SelectedTemplateStateUnselectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SelectedTemplateState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$SelectedTemplateStateUnselectedImpl
    implements _SelectedTemplateStateUnselected {
  _$SelectedTemplateStateUnselectedImpl({final String? $type})
      : $type = $type ?? 'unselected';

  factory _$SelectedTemplateStateUnselectedImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SelectedTemplateStateUnselectedImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'SelectedTemplateState.unselected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedTemplateStateUnselectedImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Template template) withData,
    required TResult Function() unselected,
  }) {
    return unselected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Template template)? withData,
    TResult? Function()? unselected,
  }) {
    return unselected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Template template)? withData,
    TResult Function()? unselected,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectedTemplateStateWithData value) withData,
    required TResult Function(_SelectedTemplateStateUnselected value)
        unselected,
  }) {
    return unselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectedTemplateStateWithData value)? withData,
    TResult? Function(_SelectedTemplateStateUnselected value)? unselected,
  }) {
    return unselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectedTemplateStateWithData value)? withData,
    TResult Function(_SelectedTemplateStateUnselected value)? unselected,
    required TResult orElse(),
  }) {
    if (unselected != null) {
      return unselected(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedTemplateStateUnselectedImplToJson(
      this,
    );
  }
}

abstract class _SelectedTemplateStateUnselected
    implements SelectedTemplateState {
  factory _SelectedTemplateStateUnselected() =
      _$SelectedTemplateStateUnselectedImpl;

  factory _SelectedTemplateStateUnselected.fromJson(Map<String, dynamic> json) =
      _$SelectedTemplateStateUnselectedImpl.fromJson;
}
