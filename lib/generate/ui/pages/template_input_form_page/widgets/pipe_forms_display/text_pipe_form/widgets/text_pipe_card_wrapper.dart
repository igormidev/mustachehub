import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/widgets/text_pipe_form_field.dart';

class TextPipeCardWrapper extends StatelessWidget {
  final List<TextPipeDto> pipes;
  final PayloadCubit bloc;
  final int groupSplit;

  final ContentInput output;
  final ExpectedPayload expectedPayload;
  const TextPipeCardWrapper(
      {super.key,
      required this.pipes,
      required this.bloc,
      required this.groupSplit,
      required this.output,
      required this.expectedPayload});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: IntrinsicHeight(
        child: Row(
          children: [
            Container(
              width: 8,
              decoration: const BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  bottomLeft: Radius.circular(12),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                padding: const EdgeInsets.only(
                  left: 12.0,
                  top: 4,
                  bottom: 4,
                  right: 8,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: pipes
                      .splitIntoGroups(groupSplit)
                      .map((List<TextPipeDto> pipesCluster) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        children: pipesCluster.mapper((
                          TextPipeDto dto,
                          bool isFirst,
                          bool isLast,
                          int index,
                        ) {
                          return Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: isFirst ? 0 : 4,
                                right: isLast ? 0 : 4,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    dto.pipe.name.capitalized,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    dto.pipe.description.capitalized,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                  const SizedBox(height: 4),
                                  TextPipeFormField(
                                    pipeDto: dto,
                                    onChangedCallback: (text) async {
                                      return await bloc.addTextPayloadValue(
                                        output: output,
                                        generatorData: expectedPayload,
                                        pipe: dto.pipe,
                                        value: text,
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
