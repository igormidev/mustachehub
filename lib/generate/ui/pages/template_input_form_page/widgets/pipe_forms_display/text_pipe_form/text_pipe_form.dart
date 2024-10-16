import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/form_stats_state.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/widgets/text_pipe_card_wrapper.dart';

class TextPipeForm extends StatelessWidget {
  final ContentInput output;
  final ExpectedPayload expectedPayload;
  const TextPipeForm({
    super.key,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<PayloadCubit>();

    return BlocBuilder<PayloadCubit, PayloadState>(
      buildWhen: (prev, curr) {
        final prevDtos = prev.expectedPayloadDto?.textDtos;
        final currDtos = curr.expectedPayloadDto?.textDtos;
        if (prevDtos == null || currDtos == null) return true;
        return listEquals(prevDtos, currDtos) == false;
      },
      builder: (context, state) {
        final pipes = state.expectedPayloadDto?.textDtos ?? <TextPipeDto>[];

        if (pipes.isEmpty) return SizedBox.fromSize();

        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomHeader(
              headerTitle: 'Text variables',
              moreOptions: [
                if (pipes.length > 1)
                  PopupMenuItem(
                    enabled: false,
                    child: DropdownMenu<int?>(
                      width: 300,
                      leadingIcon: const Tooltip(
                        message: 'Select how much textfields will be show in '
                            'one the row.\nIf set to auto, will pick '
                            'automatically the best size depending on how '
                            'much space you have in screen.',
                        child: Icon(Icons.help),
                      ),
                      label: const Text('Items per row'),
                      onSelected: (value) {
                        context.read<FormStatsCubit>().changeGridSize(value);
                      },
                      dropdownMenuEntries: const [
                        DropdownMenuEntry(
                          value: null,
                          label: 'Auto',
                        ),
                        DropdownMenuEntry(
                          value: 1,
                          label: 'One',
                        ),
                        DropdownMenuEntry(
                          value: 2,
                          label: 'Two',
                        ),
                      ],
                    ),
                  ),
              ],
            ),
            BlocBuilder<FormStatsCubit, FormStatsState>(
              builder: (context, state) {
                return LayoutBuilder(
                  builder: (context, constraints) {
                    int groupSplit;
                    if (state.textGridSize != null) {
                      groupSplit = state.textGridSize!;
                    } else {
                      if (constraints.maxWidth <= 600) {
                        groupSplit = 1;
                      } else {
                        groupSplit = 2;
                      }
                    }

                    return TextPipeCardWrapper(
                      pipes: pipes,
                      groupSplit: groupSplit,
                      bloc: bloc,
                      expectedPayload: expectedPayload,
                      output: output,
                    );
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }
}
