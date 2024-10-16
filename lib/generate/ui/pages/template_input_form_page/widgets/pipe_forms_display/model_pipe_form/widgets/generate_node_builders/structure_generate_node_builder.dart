import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';

class StructureGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final ContentInput output;
  final ExpectedPayload expectedPayload;
  final ModelPipeDto referenceModelDTO;
  final bool isExpanded;
  final bool isEmpty;
  final TreeNodeGeneratePipeDtoStructureNode structureDTONode;

  const StructureGenerateNodeBuilder({
    super.key,
    required this.rootModelDTO,
    required this.output,
    required this.expectedPayload,
    required this.referenceModelDTO,
    required this.isExpanded,
    required this.isEmpty,
    required this.structureDTONode,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();
    final payloadUUID = structureDTONode.payloadUUID;

    // final dto = structureDTONode.payloadUUID;

    return ListTile(
      title: Text('Add new "${referenceModelDTO.pipe.name}"'),
      subtitle: const Text('Structure'),
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Icon(
          Icons.account_tree_sharp,
          color: isEmpty
              ? Theme.of(context).colorScheme.surfaceContainerHighest
              : isExpanded
                  ? Theme.of(context).colorScheme.tertiary
                  : Theme.of(context).colorScheme.primary,
        ),
      ),
      trailing: Builder(builder: (context) {
        return SizedBox(
          width: 100,
          height: 100,
          child: AddNewButton(
            onTap: () {
              final ModelPipeDto? editedPipe;

              final isRoot = payloadUUID == null;
              if (isRoot) {
                editedPipe = rootModelDTO.copyWith(
                  payloadValue: [
                    ...rootModelDTO.payloadValue,
                    ModelPipeDTOPayload.fromModelPipe(
                      rootModelDTO.pipe,
                    )
                  ],
                );
              } else {
                editedPipe =
                    rootModelDTO.deepEdit<ModelPipe, List<ModelPipeDTOPayload>>(
                  // payloadId: payloadUUID,
                  pipeDtoUUID: referenceModelDTO.uuid,
                  mapFunc: (
                    PipeDTO<ModelPipe, List<ModelPipeDTOPayload>> pipe,
                  ) {
                    return pipe.copyWith(
                      payloadValue: [
                        ...?pipe.payloadValue,
                        ModelPipeDTOPayload.fromModelPipe(
                          pipe.pipe,
                        ),
                      ],
                    );
                  },
                );
              }

              if (editedPipe == null) return;

              bloc.addModelPayloadValue(
                output: output,
                expectedPayload: expectedPayload,
                newPipeDTO: editedPipe,
              );
            },
            tooltip: 'Add new "${rootModelDTO.pipe.name}" model variable',
          ),
        );
      }),
    );
  }
}
