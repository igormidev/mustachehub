import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';

class ModelGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final String content;
  final ExpectedPayload expectedPayload;
  final TreeNodeGeneratePipeDtoPipeModel modelDTONode;
  const ModelGenerateNodeBuilder({
    super.key,
    required this.rootModelDTO,
    required this.content,
    required this.expectedPayload,
    required this.modelDTONode,
  });

  @override
  Widget build(BuildContext context) {
    final dto = modelDTONode.pipeDTO;
    final index = modelDTONode.index;
    return ListTile(
      title: Text('$index ${dto.pipe.name}'),
      subtitle: const Text('Model'),
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Icon(Icons.folder),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          final ModelPipeDto? editedPipe =
              rootModelDTO.deepEdit<ModelPipe, List<ModelPipeDTOPayload>>(
            modelId: rootModelDTO.pipe.pipeId,
            pipeId: dto.pipe.pipeId,
            mapFunc: (
              PipeDTO<ModelPipe, List<ModelPipeDTOPayload>> pipe,
            ) {
              return pipe.copyWith(
                payloadValue: [
                  ...pipe.payloadValue!
                      .where(
                          (element) => element.pipe.pipeId != dto.pipe.pipeId)
                      .toList(),
                ],
              );
            },
          );

          if (editedPipe == null) {
            return;
          }

          context.read<PayloadCubit>().addModelPayloadValue(
                content: content,
                expectedPayload: expectedPayload,
                newPipeDTO: editedPipe,
              );
        },
      ),
    );
  }
}
