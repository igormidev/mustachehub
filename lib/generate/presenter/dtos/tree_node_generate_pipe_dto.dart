import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

part 'tree_node_generate_pipe_dto.freezed.dart';

@freezed
abstract class TreeNodeGeneratePipeDto with _$TreeNodeGeneratePipeDto {
  factory TreeNodeGeneratePipeDto.structureNode({
    required String? payloadUUID,
    required ModelPipeDto referenceModelDTO,
  }) = TreeNodeGeneratePipeDtoStructureNode;

  factory TreeNodeGeneratePipeDto.textNode({
    required String payloadUUID,
    required TextPipeDto pipeDTO,
  }) = TreeNodeGeneratePipeDtoPipeText;

  factory TreeNodeGeneratePipeDto.boolean({
    required String payloadUUID,
    required BooleanPipeDto pipeDTO,
  }) = TreeNodeGeneratePipeDtoPipeBoolean;

  factory TreeNodeGeneratePipeDto.choice({
    required String payloadUUID,
    required ChoicePipeDto pipeDTO,
  }) = TreeNodeGeneratePipeDtoPipeChoice;

  factory TreeNodeGeneratePipeDto.model({
    required String payloadUUID,
    required ModelPipeDto pipeDTO,
    required int index,
    required ModelPipeDTOPayload payload,
  }) = TreeNodeGeneratePipeDtoPipeModel;
}
