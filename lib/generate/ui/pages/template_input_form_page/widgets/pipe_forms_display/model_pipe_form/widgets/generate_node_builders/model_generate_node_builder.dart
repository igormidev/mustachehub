import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';

class ModelGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final ContentInput output;
  final bool isExpanded;
  final ExpectedPayload expectedPayload;
  final TreeNodeGeneratePipeDtoPipeModel modelDTONode;

  const ModelGenerateNodeBuilder({
    super.key,
    required this.rootModelDTO,
    required this.output,
    required this.expectedPayload,
    required this.isExpanded,
    required this.modelDTONode,
  });

  @override
  Widget build(BuildContext context) {
    final dto = modelDTONode.pipeDTO;
    final index = modelDTONode.index;
    return ListTile(
      title: Text('$index˚ ${dto.pipe.name}'),
      subtitle: const Text('Model'),
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Icon(
          Icons.folder,
          color: isExpanded
              ? Theme.of(context).colorScheme.tertiary
              : Theme.of(context).colorScheme.primary,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.delete),
        onPressed: () {
          final ModelPipeDto? editedPipe = rootModelDTO.deleteModel(
            pipeId: modelDTONode.payloadUUID,
          );

          if (editedPipe == null) {
            return;
          }

          context.read<PayloadCubit>().addModelPayloadValue(
                output: output,
                expectedPayload: expectedPayload,
                newPipeDTO: editedPipe,
              );
        },
      ),
    );
  }
}
