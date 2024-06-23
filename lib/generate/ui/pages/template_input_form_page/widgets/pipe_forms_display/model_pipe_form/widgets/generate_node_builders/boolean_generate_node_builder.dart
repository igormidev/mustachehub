import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/widgets/boolean_pipe_switch_form_field.dart';

class BooleanGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final String content;
  final ExpectedPayload expectedPayload;
  final TreeNodeGeneratePipeDtoPipeBoolean booleanDTONode;
  const BooleanGenerateNodeBuilder({
    super.key,
    required this.booleanDTONode,
    required this.rootModelDTO,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();
    final dto = booleanDTONode.pipeDTO;

    return Padding(
      padding: const EdgeInsets.only(
        top: 4,
        bottom: 4,
      ),
      child: BooleanPipeSwitchFormField(
        pipeDto: dto,
        onChangedCallback: (value) async {
          final ModelPipeDto? editedPipe =
              rootModelDTO.deepEdit<BooleanPipe, bool>(
            payloadId: booleanDTONode.payloadUUID,
            pipeId: dto.pipe.pipeId,
            mapFunc: (
              PipeDTO<BooleanPipe, bool> pipe,
            ) {
              return pipe.copyWith(
                payloadValue: value,
              );
            },
          );

          if (editedPipe == null) return;

          await bloc.addModelPayloadValue(
            content: content,
            expectedPayload: expectedPayload,
            newPipeDTO: editedPipe,
          );
        },
      ),
    );
  }
}
