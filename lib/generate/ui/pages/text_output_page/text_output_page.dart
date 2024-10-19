import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/displayable_content_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';
import 'package:mustachehub/generate/presenter/dtos/text_span_exibition_dto.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';
import 'package:mustachehub/generate/presenter/states/displayable_content_state.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/widgets/content_text_section_input_textfield.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/widgets/copy_all_output_header/copy_all_output_header.dart';

class TextOutputPage extends StatefulWidget {
  final ContentInput output;
  final ExpectedPayload expectedPayload;

  const TextOutputPage({
    super.key,
    required this.output,
    required this.expectedPayload,
  });

  @override
  State<TextOutputPage> createState() => _TextOutputPageState();
}

class _TextOutputPageState extends State<TextOutputPage> {
  @override
  Widget build(BuildContext context) {
    final contentBloc = context.read<ContentCubit>();

    return BlocConsumer<ContentCubit, ContentState>(
      bloc: contentBloc,
      listener: (context, state) {},
      builder: (
        context,
        state,
      ) {
        return state.map(
          withContentPendency: (value) {
            return const EmptyIndicatorSection.empty(
              text: 'No template text made',
              willHaveCircleAvatarInDarkMode: true,
            );
          },
          failureGeneratingText: (value) {
            return const EmptyIndicatorSection.error(
              text: 'Error generating text!\nCheck if template text are valid.',
              willHaveCircleAvatarInDarkMode: false,
              sholdRepeat: false,
            );
          },
          withContentText: (v) => _FinalWidget(
            output: v.content,
          ),
          withGeneratedText: (v) => _FinalWidget(
            output: v.content,
          ),
        );
      },
    );
  }
}

class _FinalWidget extends StatelessWidget {
  final ContentOutputDto output;
  const _FinalWidget({
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    final displayableContentCubit = context.read<DisplayableContentCubit>();

    return BlocBuilder<DisplayableContentCubit, DisplayableContentState>(
      bloc: displayableContentCubit,
      builder: (context, state) {
        return state.when(
          none: () => const SizedBox.shrink(),
          listOfTexts: (List<TextSpanExibitionDto> exibitionDto) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: ListView(
                children: [
                  const CopyAllOutputHeader(),
                  const SizedBox(height: 8),
                  if (exibitionDto.length == 1) ...[
                    ContentTextSectionInputTextfield(
                      exibitionDto.first,
                      isSingle: true,
                    ),
                  ] else ...[
                    ...exibitionDto.map(ContentTextSectionInputTextfield.new),
                  ],
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
