import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/widgets/boolean_pipe_switch_form_field.dart';

class BooleanPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const BooleanPipeForm({
    super.key,
    required this.content,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.booleanDtos;
        final currDtos = curr.expectedPayloadDto?.booleanDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes =
            state.expectedPayloadDto?.booleanDtos ?? <BooleanPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeader(headerTitle: 'Boolean variables'),
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              children: pipes.map((BooleanPipeDto pipe) {
                return BooleanPipeSwitchFormField(
                  pipeDto: pipe,
                  onChangedCallback: (value) async {
                    return await bloc.addBooleanPayloadValue(
                      content: content,
                      expectedPayload: expectedPayload,
                      pipe: pipe.pipe,
                      value: value,
                    );
                  },
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}
