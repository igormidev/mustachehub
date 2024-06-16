import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/app_core/theme/default_widgets/debounce_widget.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/form_stats_state.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';

class TextPipeForm extends StatelessWidget {
  final String content;
  final ExpectedPayload expectedPayload;
  const TextPipeForm({
    super.key,
    required this.content,
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
              headerTitle: 'Text variables payload',
              moreOptions: [
                PopupMenuItem(
                  enabled: false,
                  child: DropdownMenu<int?>(
                    width: 150,
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
            const SizedBox(height: 8),
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

                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      children: pipes
                          .splitIntoGroups(groupSplit)
                          .map((List<TextPipeDto> pipesCluster) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Row(
                            children: pipesCluster.mapper((
                              TextPipeDto pipe,
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
                                  child: TextPipeTextfield(
                                    pipeDto: pipe,
                                    onChangedCallback: (text) async {
                                      return await bloc.addTextPayloadValue(
                                        content: content,
                                        generatorData: expectedPayload,
                                        pipe: pipe.pipe,
                                        value: text,
                                      );
                                    },
                                  ),
                                ),
                              );
                            }),
                          ),
                        );
                      }).toList(),
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

class TextPipeTextfield extends StatelessWidget with ValidatorsMixins {
  final TextPipeDto pipeDto;
  final Future<void> Function(String? text) onChangedCallback;
  final Debouncer debouncer =
      Debouncer(timerDuration: const Duration(milliseconds: 1200));

  TextPipeTextfield({
    super.key,
    required this.pipeDto,
    required this.onChangedCallback,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: pipeDto.payloadValue,
      decoration: InputDecoration(
        labelText: pipeDto.pipe.name,
        hintText: pipeDto.pipe.description,
        suffixIcon: DebounceWidget(
          debouncer,
          child: Tooltip(
            message: pipeDto.pipe.description,
            child: const Icon(Icons.info),
          ),
        ),
      ),
      autovalidateMode: AutovalidateMode.always,
      validator: (String? value) {
        if (pipeDto.pipe.isRequired) return isNotEmpty(value);

        return null;
      },
      onChanged: (value) {
        debouncer.resetDebounce(() async {
          final text = value.isEmpty == true ? null : value;
          onChangedCallback(text);
        });
      },
    );
  }
}
