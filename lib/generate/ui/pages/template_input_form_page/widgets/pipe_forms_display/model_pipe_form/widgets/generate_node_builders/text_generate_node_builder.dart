import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/tree_node_generate_pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/widgets/text_pipe_form_field.dart';

class TextGenerateNodeBuilder extends StatelessWidget {
  final ModelPipeDto rootModelDTO;
  final String content;
  final ExpectedPayload expectedPayload;
  final TreeNodeGeneratePipeDtoPipeText textDTONode;
  const TextGenerateNodeBuilder({
    super.key,
    required this.textDTONode,
    required this.rootModelDTO,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();
    final dto = textDTONode.pipeDTO;

    return Padding(
      padding: const EdgeInsets.only(
        top: 4,
        bottom: 4,
      ),
      child: TextPipeFormField(
        pipeDto: dto,
        onChangedCallback: (String? text) async {
          if (text == null) return;

          final ModelPipeDto? editedPipe =
              rootModelDTO.deepEdit<TextPipe, String>(
            payloadId: textDTONode.payloadUUID,
            pipeId: dto.pipe.pipeId,
            pipeDtoUUID: dto.uuid,
            mapFunc: (
              PipeDTO<TextPipe, String> pipe,
            ) {
              return pipe.copyWith(
                payloadValue: text,
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
