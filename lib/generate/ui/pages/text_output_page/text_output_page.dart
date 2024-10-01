import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/widgets/content_text_display.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/widgets/copy_all_output_header/copy_all_output_header.dart';

class TextOutputPage extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final ContentInput output;
  final ExpectedPayload expectedPayload;

  const TextOutputPage({
    super.key,
    required this.output,
    required this.expectedPayload,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final contentBloc = context.read<ContentCubit>();
    return BlocBuilder<ContentCubit, ContentState>(
      bloc: contentBloc,
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

class _FinalWidget extends StatelessWidget with CopyToClipboardMixin {
  final ContentOutputDto output;
  const _FinalWidget({
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PayloadCubit, PayloadState>(
      bloc: context.read<PayloadCubit>(),
      buildWhen: (previous, current) {
        return previous.runtimeType != current.runtimeType;
      },
      builder: (context, state) {
        if (state is WithRequiredFieldsPendency) {
          return const EmptyIndicatorSection.empty(
            text: 'Need to type all\nrequired fields!',
            willHaveCircleAvatarInDarkMode: false,
            sholdRepeat: false,
            margin: 32,
          );
        }

        return Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: ListView(
            children: [
              const CopyAllOutputHeader(),
              const SizedBox(height: 8),
              ...output.when(
                string: (List<ContentTextSectionInput> items) {
                  return items.map(
                    (ContentTextSectionInput text) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        padding: const EdgeInsets.all(8),
                        margin: const EdgeInsets.only(bottom: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    ' ${text.title}',
                                    style:
                                        Theme.of(context).textTheme.titleSmall,
                                  ),
                                ),
                                Tooltip(
                                  message: 'Copy section text',
                                  child: InkWell(
                                    onTap: () {
                                      copyText(text.content, context);

                                      FirebaseAnalytics.instance.logEvent(
                                          name: 'output_section_copied');
                                    },
                                    // borderRadius: BorderRadius.circular(16),
                                    child: const Icon(Icons.copy, size: 20),
                                  ),
                                ),
                                const SizedBox(width: 8),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Theme.of(context)
                                    .colorScheme
                                    .onInverseSurface,
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: ContentTextDisplay(
                                  text: text.content,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }
}
