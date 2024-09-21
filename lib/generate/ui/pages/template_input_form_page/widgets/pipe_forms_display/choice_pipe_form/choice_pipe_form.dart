import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/choice_pipe_form/widgets/choice_pipe_choose_form_field.dart';

class ChoicePipeForm extends StatelessWidget {
  final ContentInput output;
  final ExpectedPayload expectedPayload;
  const ChoicePipeForm({
    super.key,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.choiceDtos;
        final currDtos = curr.expectedPayloadDto?.choiceDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes = state.expectedPayloadDto?.choiceDtos ?? <ChoicePipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(headerTitle: 'Conditional variables'),
            const SizedBox(height: 8),
            ...pipes.map((ChoicePipeDto pipeDto) {
              return ChoicePipeChooseFormField(
                choosedPipeName: pipeDto.payloadValue,
                choicePipeDto: pipeDto,
                onChangedCallback: (pipe) async {
                  return await bloc.addChoicePayloadValue(
                    output: output,
                    expectedPayload: expectedPayload,
                    pipe: pipeDto.pipe,
                    value: pipe,
                  );
                },
              );
            }),
          ],
        );
      },
    );
  }
}
