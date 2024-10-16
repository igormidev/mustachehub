import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/extensions/string_extension.dart';
import 'package:mustachehub/generate/presenter/cubits/displayable_content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:mustachehub/generate/presenter/states/displayable_content_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/widgets/text_pipe_form_field.dart';

class TextPipeCardWrapper extends StatelessWidget {
  final List<TextPipeDto> pipes;
  final PayloadCubit bloc;
  final int groupSplit;
  final ContentInput output;
  final ExpectedPayload expectedPayload;

  const TextPipeCardWrapper({
    super.key,
    required this.pipes,
    required this.bloc,
    required this.groupSplit,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    final displayableContentCubit = context.read<DisplayableContentCubit>();

    return BlocSelector<DisplayableContentCubit, DisplayableContentState,
        Set<String>>(
      bloc: displayableContentCubit,
      selector: (state) => state.when(
        // All variables that are used in any fields, but are
        // currently not fullfilled (that is: are with red indicators)
        listOfTexts: (spans) => spans.expand((e) => e.requiredFields).toSet(),
        none: () => {},
      ),
      builder: (context, allRequiredFields) {
        if (pipes.isEmpty) return SizedBox.fromSize();

        if (groupSplit == 1) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: pipes.map((TextPipeDto dto) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: TextPipeCardWrapperTile(
                  dto: dto,
                  isFirst: true,
                  isLast: true,
                  isRequired: allRequiredFields.contains(dto.pipe.mustacheName),
                  bloc: bloc,
                  output: output,
                  expectedPayload: expectedPayload,
                ),
              );
            }).toList(),
          );
        }

        return Column(
          mainAxisSize: MainAxisSize.min,
          children: pipes
              .splitIntoGroups(groupSplit)
              .map((List<TextPipeDto> pipesCluster) {
            return IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: pipesCluster.mapper((
                  TextPipeDto dto,
                  bool isFirst,
                  bool isLast,
                  int index,
                ) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: TextPipeCardWrapperTile(
                        dto: dto,
                        isFirst: isFirst,
                        isLast: isLast,
                        isRequired:
                            allRequiredFields.contains(dto.pipe.mustacheName),
                        bloc: bloc,
                        output: output,
                        expectedPayload: expectedPayload,
                      ),
                    ),
                  );
                }).toList(),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class TextPipeCardWrapperTile extends StatelessWidget {
  final TextPipeDto dto;
  final bool isFirst;
  final bool isLast;
  final bool isRequired;
  final PayloadCubit bloc;
  final ContentInput output;
  final ExpectedPayload expectedPayload;

  const TextPipeCardWrapperTile({
    super.key,
    required this.dto,
    required this.isFirst,
    required this.isLast,
    required this.isRequired,
    required this.bloc,
    required this.output,
    required this.expectedPayload,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          if (!isFirst) const SizedBox(width: 5),
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
                top: 6,
                bottom: 6,
                right: 12,
              ),
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
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      dto.pipe.description.capitalized,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 8),
                    TextPipeFormField(
                      isRequired: isRequired,
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
            ),
          ),
          if (!isLast) const SizedBox(width: 5),
        ],
      ),
    );
  }
}
