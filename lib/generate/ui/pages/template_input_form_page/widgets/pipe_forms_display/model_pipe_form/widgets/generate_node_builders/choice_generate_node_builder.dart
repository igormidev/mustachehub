import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/choice_pipe_form/widgets/choice_pipe_choose_form_field.dart';

class ChoiceGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final ContentInput output;
  final ExpectedPayload expectedPayload;
  final TreeNodeGeneratePipeDtoPipeChoice choiceDTONode;
  const ChoiceGenerateNodeBuilder({
    super.key,
    required this.choiceDTONode,
    required this.rootModelDTO,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();
    final dto = choiceDTONode.pipeDTO;

    return Padding(
      padding: const EdgeInsets.only(
        top: 4,
        bottom: 4,
      ),
      child: ChoicePipeChooseFormField(
        choicePipeDto: dto,
        choosedPipeName: dto.payloadValue,
        onChangedCallback: (option) async {
          final ModelPipeDto? editedPipe =
              rootModelDTO.deepEdit<ChoicePipe, String>(
            pipeDtoUUID: dto.uuid,
            mapFunc: (
              PipeDTO<ChoicePipe, String> pipe,
            ) {
              return pipe.copyWith(payloadValue: option);
            },
          );
          if (editedPipe == null) return;

          await bloc.addModelPayloadValue(
            output: output,
            expectedPayload: expectedPayload,
            newPipeDTO: editedPipe,
          );
        },
      ),
    );
  }
}
