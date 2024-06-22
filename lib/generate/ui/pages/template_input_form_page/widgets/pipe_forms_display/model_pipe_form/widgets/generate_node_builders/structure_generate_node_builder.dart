import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class StructureGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final String content;
  final ExpectedPayload expectedPayload;
  final ModelPipeDto referenceModelDTO;

  const StructureGenerateNodeBuilder({
    super.key,
    required this.rootModelDTO,
    required this.content,
    required this.expectedPayload,
    required this.referenceModelDTO,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

    return ListTile(
      title: Text('Add new "${rootModelDTO.pipe.name}"'),
      subtitle: const Text('Structure'),
      leading: const Padding(
        padding: EdgeInsets.only(top: 8.0),
        child: Icon(Icons.account_tree_sharp),
      ),
      trailing: Builder(builder: (context) {
        return SizedBox(
          width: 100,
          height: 100,
          child: AddNewButton(
            onTap: () {
              final ModelPipeDto? editedPipe =
                  rootModelDTO.deepEdit<ModelPipe, List<ModelPipeDTOPayload>>(
                modelId: referenceModelDTO.pipe.pipeId,
                pipeId: referenceModelDTO.pipe.pipeId,
                mapFunc: (
                  PipeDTO<ModelPipe, List<ModelPipeDTOPayload>> pipe,
                ) {
                  return pipe.copyWith(
                    payloadValue: [
                      ...?pipe.payloadValue,
                      ModelPipeDTOPayload.fromModelPipe(
                        pipe.pipe,
                      )
                    ],
                  );
                },
              );

              if (editedPipe == null) {
                return;
              }

              bloc.addModelPayloadValue(
                content: content,
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
