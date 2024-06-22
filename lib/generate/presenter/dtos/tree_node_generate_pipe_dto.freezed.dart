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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ModelPipeDto referenceModelDTO) structureNode,
    required TResult Function(TextPipeDto pipeDTO) textNode,
    required TResult Function(BooleanPipeDto pipeDTO) boolean,
    required TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult? Function(TextPipeDto pipeDTO)? textNode,
    TResult? Function(BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult Function(TextPipeDto pipeDTO)? textNode,
    TResult Function(BooleanPipeDto pipeDTO)? boolean,
    TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
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
}

/// @nodoc
abstract class $TreeNodeGeneratePipeDtoCopyWith<$Res> {
  factory $TreeNodeGeneratePipeDtoCopyWith(TreeNodeGeneratePipeDto value,
          $Res Function(TreeNodeGeneratePipeDto) then) =
      _$TreeNodeGeneratePipeDtoCopyWithImpl<$Res, TreeNodeGeneratePipeDto>;
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
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith(
          _$TreeNodeGeneratePipeDtoStructureNodeImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoStructureNodeImpl) then) =
      __$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelPipeDto referenceModelDTO});
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
    Object? referenceModelDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoStructureNodeImpl(
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
  _$TreeNodeGeneratePipeDtoStructureNodeImpl({required this.referenceModelDTO});

  @override
  final ModelPipeDto referenceModelDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.structureNode(referenceModelDTO: $referenceModelDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoStructureNodeImpl &&
            (identical(other.referenceModelDTO, referenceModelDTO) ||
                other.referenceModelDTO == referenceModelDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceModelDTO);

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
    required TResult Function(ModelPipeDto referenceModelDTO) structureNode,
    required TResult Function(TextPipeDto pipeDTO) textNode,
    required TResult Function(BooleanPipeDto pipeDTO) boolean,
    required TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return structureNode(referenceModelDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult? Function(TextPipeDto pipeDTO)? textNode,
    TResult? Function(BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
  }) {
    return structureNode?.call(referenceModelDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult Function(TextPipeDto pipeDTO)? textNode,
    TResult Function(BooleanPipeDto pipeDTO)? boolean,
    TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (structureNode != null) {
      return structureNode(referenceModelDTO);
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
          {required final ModelPipeDto referenceModelDTO}) =
      _$TreeNodeGeneratePipeDtoStructureNodeImpl;

  ModelPipeDto get referenceModelDTO;
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoStructureNodeImplCopyWith<
          _$TreeNodeGeneratePipeDtoStructureNodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeTextImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeTextImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeTextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TextPipeDto pipeDTO});
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
    Object? pipeDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeTextImpl(
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
  _$TreeNodeGeneratePipeDtoPipeTextImpl({required this.pipeDTO});

  @override
  final TextPipeDto pipeDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.textNode(pipeDTO: $pipeDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeTextImpl &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipeDTO);

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
    required TResult Function(ModelPipeDto referenceModelDTO) structureNode,
    required TResult Function(TextPipeDto pipeDTO) textNode,
    required TResult Function(BooleanPipeDto pipeDTO) boolean,
    required TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return textNode(pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult? Function(TextPipeDto pipeDTO)? textNode,
    TResult? Function(BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
  }) {
    return textNode?.call(pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult Function(TextPipeDto pipeDTO)? textNode,
    TResult Function(BooleanPipeDto pipeDTO)? boolean,
    TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (textNode != null) {
      return textNode(pipeDTO);
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
          {required final TextPipeDto pipeDTO}) =
      _$TreeNodeGeneratePipeDtoPipeTextImpl;

  TextPipeDto get pipeDTO;
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeTextImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeTextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeBooleanImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BooleanPipeDto pipeDTO});
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
    Object? pipeDTO = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeBooleanImpl(
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
  _$TreeNodeGeneratePipeDtoPipeBooleanImpl({required this.pipeDTO});

  @override
  final BooleanPipeDto pipeDTO;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.boolean(pipeDTO: $pipeDTO)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeBooleanImpl &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipeDTO);

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
    required TResult Function(ModelPipeDto referenceModelDTO) structureNode,
    required TResult Function(TextPipeDto pipeDTO) textNode,
    required TResult Function(BooleanPipeDto pipeDTO) boolean,
    required TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return boolean(pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult? Function(TextPipeDto pipeDTO)? textNode,
    TResult? Function(BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
  }) {
    return boolean?.call(pipeDTO);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult Function(TextPipeDto pipeDTO)? textNode,
    TResult Function(BooleanPipeDto pipeDTO)? boolean,
    TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (boolean != null) {
      return boolean(pipeDTO);
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
          {required final BooleanPipeDto pipeDTO}) =
      _$TreeNodeGeneratePipeDtoPipeBooleanImpl;

  BooleanPipeDto get pipeDTO;
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeBooleanImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeBooleanImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<$Res> {
  factory _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith(
          _$TreeNodeGeneratePipeDtoPipeModelImpl value,
          $Res Function(_$TreeNodeGeneratePipeDtoPipeModelImpl) then) =
      __$$TreeNodeGeneratePipeDtoPipeModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload});
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
    Object? pipeDTO = null,
    Object? index = null,
    Object? payload = null,
  }) {
    return _then(_$TreeNodeGeneratePipeDtoPipeModelImpl(
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
      {required this.pipeDTO, required this.index, required this.payload});

  @override
  final ModelPipeDto pipeDTO;
  @override
  final int index;
  @override
  final ModelPipeDTOPayload payload;

  @override
  String toString() {
    return 'TreeNodeGeneratePipeDto.model(pipeDTO: $pipeDTO, index: $index, payload: $payload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TreeNodeGeneratePipeDtoPipeModelImpl &&
            (identical(other.pipeDTO, pipeDTO) || other.pipeDTO == pipeDTO) &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.payload, payload) || other.payload == payload));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pipeDTO, index, payload);

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
    required TResult Function(ModelPipeDto referenceModelDTO) structureNode,
    required TResult Function(TextPipeDto pipeDTO) textNode,
    required TResult Function(BooleanPipeDto pipeDTO) boolean,
    required TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)
        model,
  }) {
    return model(pipeDTO, index, payload);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult? Function(TextPipeDto pipeDTO)? textNode,
    TResult? Function(BooleanPipeDto pipeDTO)? boolean,
    TResult? Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
  }) {
    return model?.call(pipeDTO, index, payload);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ModelPipeDto referenceModelDTO)? structureNode,
    TResult Function(TextPipeDto pipeDTO)? textNode,
    TResult Function(BooleanPipeDto pipeDTO)? boolean,
    TResult Function(
            ModelPipeDto pipeDTO, int index, ModelPipeDTOPayload payload)?
        model,
    required TResult orElse(),
  }) {
    if (model != null) {
      return model(pipeDTO, index, payload);
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
          {required final ModelPipeDto pipeDTO,
          required final int index,
          required final ModelPipeDTOPayload payload}) =
      _$TreeNodeGeneratePipeDtoPipeModelImpl;

  ModelPipeDto get pipeDTO;
  int get index;
  ModelPipeDTOPayload get payload;
  @JsonKey(ignore: true)
  _$$TreeNodeGeneratePipeDtoPipeModelImplCopyWith<
          _$TreeNodeGeneratePipeDtoPipeModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
