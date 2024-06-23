// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tree_node_generate_pipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TreeNodeGeneratePipeDto {
  String? get payloadUUID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? payloadUUID, ModelPipeDto referenceModelDTO)
        structureNode,
    required TResult Function(String payloadUUID, TextPipeDto pipeDTO) textNode,
    required TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)
        boolean,
    required TResult Function(String payloadUUID, ModelPipeDto pipeDTO,
            int index, ModelPipeDTOPayload payload)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult? Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult? Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreeNodeGeneratePipeDtoStructureNode value)
        structureNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeText value) textNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value) boolean,
    required TResult Function(TreeNodeGeneratePipeDtoPipeModel value) model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreeNodeGeneratePipeDtoStructureNode value)?
        structureNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult? Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreeNodeGeneratePipeDtoStructureNode value)? structureNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TreeNodeGeneratePipeDtoCopyWith<TreeNodeGeneratePipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory $TreeNodeGeneratePipeDtoCopyWith(TreeNodeGeneratePipeDto value,
          $Res Function(TreeNodeGeneratePipeDto) then) =
      _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res, TreeNodeGeneratePipeDto>;
  @useResult
  $Res call({String payloadUUID});
}

/// @nodoc
class _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res,
        $Val extends TreeNodeGeneratePipeDto>
    implements $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  _$TreeNodeGeneratePipeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadUUID = null,
  }) {
    return _then(_value.copyWith(
      payloadUUID: null == payloadUUID
          ? _value.payloadUUID!
          : payloadUUID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<$Res>
    implements $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith(
          _$TreeNodeGeneratePipeDtoStructureNodeImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoStructureNodeImpl) then) =
      __$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? payloadUUID, ModelPipeDto referenceModelDTO});
}

/// @nodoc
class __$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWithImpl<$Res>
    extends _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res,
        _$TreeNodeGeneratePipeDtoStructureNodeImpl>
    implements _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<$Res> {
  __$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWithImpl(
      _$TreeNodeGeneratePipeDtoStructureNodeImpl _value,
      $Res Function(_$TreeNodeGeneratePipeDtoStructureNodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadUUID = freezed,
    Object? referenceModelDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoStructureNodeImpl(
      payloadUUID: freezed == payloadUUID
          ? _value.payloadUUID
          : payloadUUID // ignore: cast_nullable_to_non_nullable
              as String?,
      referenceModelDTO: null == referenceModelDTO
          ? _value.referenceModelDTO
          : referenceModelDTO // ignore: cast_nullable_to_non_nullable
              as ModelPipeDto,
    ));
  }
}

/// @nodoc

class _$TreeNodeGeneratePipeDtoStructureNodeImpl
    implements TreeNodeGeneratePipeDtoStructureNode {
  _$TreeNodeGeneratePipeDtoStructureNodeImpl(
      {required this.payloadUUID, required this.referenceModelDTO});

  @override
  final String? payloadUUID;
  @override
  final ModelPipeDto referenceModelDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.structureNode(payloadUUID: $payloadUUID, referenceModelDTO: $referenceModelDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoStructureNodeImpl &&
            (identical(other.payloadUUID, payloadUUID) ||
                other.payloadUUID == payloadUUID) &&
            (identical(other.referenceModelDTO, referenceModelDTO) ||
                other.referenceModelDTO == referenceModelDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payloadUUID, referenceModelDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<
          _$TreeNodeGeneratePipeDtoStructureNodeImpl>
      get copyWith => __$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWithImpl<
          _$TreeNodeGeneratePipeDtoStructureNodeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? payloadUUID, ModelPipeDto referenceModelDTO)
        structureNode,
    required TResult Function(String payloadUUID, TextPipeDto pipeDTO) textNode,
    required TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)
        boolean,
    required TResult Function(String payloadUUID, ModelPipeDto pipeDTO,
            int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return structureNode(payloadUUID, referenceModelDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult? Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult? Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
  }) {
    return structureNode?.call(payloadUUID, referenceModelDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (structureNode != null) {
      return structureNode(payloadUUID, referenceModelDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreeNodeGeneratePipeDtoStructureNode value)
        structureNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeText value) textNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value) boolean,
    required TResult Function(TreeNodeGeneratePipeDtoPipeModel value) model,
  }) {
    return structureNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreeNodeGeneratePipeDtoStructureNode value)?
        structureNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult? Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
  }) {
    return structureNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreeNodeGeneratePipeDtoStructureNode value)? structureNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
    required TResult orElse(),
  }) {
    if (structureNode != null) {
      return structureNode(this);
    }
    return orElse();
  }
}

abstract class TreeNodeGeneratePipeDtoStructureNode
    implements TreeNodeGeneratePipeDto {
  factory TreeNodeGeneratePipeDtoStructureNode(
          {required final String? payloadUUID,
          required final ModelPipeDto referenceModelDTO}) =
      _$TreeNodeGeneratePipeDtoStructureNodeImpl;

  @override
  String? get payloadUUID;
  ModelPipeDto get referenceModelDTO;
  @override
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<
          _$TreeNodeGeneratePipeDtoStructureNodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<$Res>
    implements $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeTextImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeTextImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeTextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payloadUUID, TextPipeDto pipeDTO});
}

/// @nodoc
class __$$TreeNodeGeneratePipeDtoPipeTextImplCopyWithImpl<$Res>
    extends _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res,
        _$TreeNodeGeneratePipeDtoPipeTextImpl>
    implements _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<$Res> {
  __$$TreeNodeGeneratePipeDtoPipeTextImplCopyWithImpl(
      _$TreeNodeGeneratePipeDtoPipeTextImpl _value,
      $Res Function(_$TreeNodeGeneratePipeDtoPipeTextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadUUID = null,
    Object? pipeDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeTextImpl(
      payloadUUID: null == payloadUUID
          ? _value.payloadUUID
          : payloadUUID // ignore: cast_nullable_to_non_nullable
              as String,
      pipeDTO: null == pipeDTO
          ? _value.pipeDTO
          : pipeDTO // ignore: cast_nullable_to_non_nullable
              as TextPipeDto,
    ));
  }
}

/// @nodoc

class _$TreeNodeGeneratePipeDtoPipeTextImpl
    implements TreeNodeGeneratePipeDtoPipeText {
  _$TreeNodeGeneratePipeDtoPipeTextImpl(
      {required this.payloadUUID, required this.pipeDTO});

  @override
  final String payloadUUID;
  @override
  final TextPipeDto pipeDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.textNode(payloadUUID: $payloadUUID, pipeDTO: $pipeDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeTextImpl &&
            (identical(other.payloadUUID, payloadUUID) ||
                other.payloadUUID == payloadUUID) &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payloadUUID, pipeDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeTextImpl>
      get copyWith => __$$TreeNodeGeneratePipeDtoPipeTextImplCopyWithImpl<
          _$TreeNodeGeneratePipeDtoPipeTextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? payloadUUID, ModelPipeDto referenceModelDTO)
        structureNode,
    required TResult Function(String payloadUUID, TextPipeDto pipeDTO) textNode,
    required TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)
        boolean,
    required TResult Function(String payloadUUID, ModelPipeDto pipeDTO,
            int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return textNode(payloadUUID, pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult? Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult? Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
  }) {
    return textNode?.call(payloadUUID, pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (textNode != null) {
      return textNode(payloadUUID, pipeDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreeNodeGeneratePipeDtoStructureNode value)
        structureNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeText value) textNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value) boolean,
    required TResult Function(TreeNodeGeneratePipeDtoPipeModel value) model,
  }) {
    return textNode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreeNodeGeneratePipeDtoStructureNode value)?
        structureNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult? Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
  }) {
    return textNode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreeNodeGeneratePipeDtoStructureNode value)? structureNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
    required TResult orElse(),
  }) {
    if (textNode != null) {
      return textNode(this);
    }
    return orElse();
  }
}

abstract class TreeNodeGeneratePipeDtoPipeText
    implements TreeNodeGeneratePipeDto {
  factory TreeNodeGeneratePipeDtoPipeText(
          {required final String payloadUUID,
          required final TextPipeDto pipeDTO}) =
      _$TreeNodeGeneratePipeDtoPipeTextImpl;

  @override
  String get payloadUUID;
  TextPipeDto get pipeDTO;
  @override
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<$Res>
    implements $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeBooleanImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String payloadUUID, BooleanPipeDto pipeDTO});
}

/// @nodoc
class __$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWithImpl<$Res>
    extends _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res,
        _$TreeNodeGeneratePipeDtoPipeBooleanImpl>
    implements _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<$Res> {
  __$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWithImpl(
      _$TreeNodeGeneratePipeDtoPipeBooleanImpl _value,
      $Res Function(_$TreeNodeGeneratePipeDtoPipeBooleanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadUUID = null,
    Object? pipeDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeBooleanImpl(
      payloadUUID: null == payloadUUID
          ? _value.payloadUUID
          : payloadUUID // ignore: cast_nullable_to_non_nullable
              as String,
      pipeDTO: null == pipeDTO
          ? _value.pipeDTO
          : pipeDTO // ignore: cast_nullable_to_non_nullable
              as BooleanPipeDto,
    ));
  }
}

/// @nodoc

class _$TreeNodeGeneratePipeDtoPipeBooleanImpl
    implements TreeNodeGeneratePipeDtoPipeBoolean {
  _$TreeNodeGeneratePipeDtoPipeBooleanImpl(
      {required this.payloadUUID, required this.pipeDTO});

  @override
  final String payloadUUID;
  @override
  final BooleanPipeDto pipeDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.boolean(payloadUUID: $payloadUUID, pipeDTO: $pipeDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeBooleanImpl &&
            (identical(other.payloadUUID, payloadUUID) ||
                other.payloadUUID == payloadUUID) &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payloadUUID, pipeDTO);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl>
      get copyWith => __$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWithImpl<
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? payloadUUID, ModelPipeDto referenceModelDTO)
        structureNode,
    required TResult Function(String payloadUUID, TextPipeDto pipeDTO) textNode,
    required TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)
        boolean,
    required TResult Function(String payloadUUID, ModelPipeDto pipeDTO,
            int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return boolean(payloadUUID, pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult? Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult? Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
  }) {
    return boolean?.call(payloadUUID, pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(payloadUUID, pipeDTO);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreeNodeGeneratePipeDtoStructureNode value)
        structureNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeText value) textNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value) boolean,
    required TResult Function(TreeNodeGeneratePipeDtoPipeModel value) model,
  }) {
    return boolean(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreeNodeGeneratePipeDtoStructureNode value)?
        structureNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult? Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
  }) {
    return boolean?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreeNodeGeneratePipeDtoStructureNode value)? structureNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(this);
    }
    return orElse();
  }
}

abstract class TreeNodeGeneratePipeDtoPipeBoolean
    implements TreeNodeGeneratePipeDto {
  factory TreeNodeGeneratePipeDtoPipeBoolean(
          {required final String payloadUUID,
          required final BooleanPipeDto pipeDTO}) =
      _$TreeNodeGeneratePipeDtoPipeBooleanImpl;

  @override
  String get payloadUUID;
  BooleanPipeDto get pipeDTO;
  @override
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<$Res>
    implements $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeModelImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeModelImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String payloadUUID,
      ModelPipeDto pipeDTO,
      int index,
      ModelPipeDTOPayload payload});
}

/// @nodoc
class __$$TreeNodeGeneratePipeDtoPipeModelImplCopyWithImpl<$Res>
    extends _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res,
        _$TreeNodeGeneratePipeDtoPipeModelImpl>
    implements _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<$Res> {
  __$$TreeNodeGeneratePipeDtoPipeModelImplCopyWithImpl(
      _$TreeNodeGeneratePipeDtoPipeModelImpl _value,
      $Res Function(_$TreeNodeGeneratePipeDtoPipeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payloadUUID = null,
    Object? pipeDTO = null,
    Object? index = null,
    Object? payload = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeModelImpl(
      payloadUUID: null == payloadUUID
          ? _value.payloadUUID
          : payloadUUID // ignore: cast_nullable_to_non_nullable
              as String,
      pipeDTO: null == pipeDTO
          ? _value.pipeDTO
          : pipeDTO // ignore: cast_nullable_to_non_nullable
              as ModelPipeDto,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      payload: null == payload
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as ModelPipeDTOPayload,
    ));
  }
}

/// @nodoc

class _$TreeNodeGeneratePipeDtoPipeModelImpl
    implements TreeNodeGeneratePipeDtoPipeModel {
  _$TreeNodeGeneratePipeDtoPipeModelImpl(
      {required this.payloadUUID,
      required this.pipeDTO,
      required this.index,
      required this.payload});

  @override
  final String payloadUUID;
  @override
  final ModelPipeDto pipeDTO;
  @override
  final int index;
  @override
  final ModelPipeDTOPayload payload;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.model(payloadUUID: $payloadUUID, pipeDTO: $pipeDTO, index: $index, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeModelImpl &&
            (identical(other.payloadUUID, payloadUUID) ||
                other.payloadUUID == payloadUUID) &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, payloadUUID, pipeDTO, index, payload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeModelImpl>
      get copyWith => __$$TreeNodeGeneratePipeDtoPipeModelImplCopyWithImpl<
          _$TreeNodeGeneratePipeDtoPipeModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? payloadUUID, ModelPipeDto referenceModelDTO)
        structureNode,
    required TResult Function(String payloadUUID, TextPipeDto pipeDTO) textNode,
    required TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)
        boolean,
    required TResult Function(String payloadUUID, ModelPipeDto pipeDTO,
            int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return model(payloadUUID, pipeDTO, index, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult? Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult? Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
  }) {
    return model?.call(payloadUUID, pipeDTO, index, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? payloadUUID, ModelPipeDto referenceModelDTO)?
        structureNode,
    TResult Function(String payloadUUID, TextPipeDto pipeDTO)? textNode,
    TResult Function(String payloadUUID, BooleanPipeDto pipeDTO)? boolean,
    TResult Function(String payloadUUID, ModelPipeDto pipeDTO, int index,
            ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(payloadUUID, pipeDTO, index, payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TreeNodeGeneratePipeDtoStructureNode value)
        structureNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeText value) textNode,
    required TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value) boolean,
    required TResult Function(TreeNodeGeneratePipeDtoPipeModel value) model,
  }) {
    return model(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TreeNodeGeneratePipeDtoStructureNode value)?
        structureNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult? Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult? Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
  }) {
    return model?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TreeNodeGeneratePipeDtoStructureNode value)? structureNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeText value)? textNode,
    TResult Function(TreeNodeGeneratePipeDtoPipeBoolean value)? boolean,
    TResult Function(TreeNodeGeneratePipeDtoPipeModel value)? model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(this);
    }
    return orElse();
  }
}

abstract class TreeNodeGeneratePipeDtoPipeModel
    implements TreeNodeGeneratePipeDto {
  factory TreeNodeGeneratePipeDtoPipeModel(
          {required final String payloadUUID,
          required final ModelPipeDto pipeDTO,
          required final int index,
          required final ModelPipeDTOPayload payload}) =
      _$TreeNodeGeneratePipeDtoPipeModelImpl;

  @override
  String get payloadUUID;
  ModelPipeDto get pipeDTO;
  int get index;
  ModelPipeDTOPayload get payload;
  @override
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
