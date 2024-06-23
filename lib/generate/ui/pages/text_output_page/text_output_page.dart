// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/app_core/theme/default_widgets/custom_header.dart';
import 'package:mustachehub/app_core/theme/mixins/copy_to_clipboard_mixin.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';

class TextOutputPage extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final String content;
  final ExpectedPayload expectedPayload;

  const TextOutputPage({
    super.key,
    required this.content,
    required this.expectedPayload,
    required this.formKey,
  });

  @override
  Widget build(BuildContext context) {
    final payloadCubit = context.read<PayloadCubit>();
    final contentBloc = context.read<ContentCubit>();
    return BlocListener<PayloadCubit, PayloadState>(
      bloc: payloadCubit,
      listener: (context, state) {
        // final formState = formKey.currentState;
        // final isFormValid = formState?.validate();
        // if (isFormValid == false) {
        //   return payloadCubit.setStateToPendingRequiredFields();
        // } else {
        //   contentBloc.updateContent(
        //     content: content,
        //     expectedPayload: expectedPayload,
        //     expectedPayloadDTO: state.expectedPayloadDto,
        //   );
        // }
      },
      child: BlocBuilder<ContentCubit, ContentState>(
        bloc: contentBloc,
        builder: (
          context,
          state,
        ) {
          return state.map(
            withContentPendency: (value) {
              return const EmptyIndicatorSection.empty(
                text: 'No content text made',
                willHaveCircleAvatarInDarkMode: true,
              );
            },
            failureGeneratingText: (value) {
              return const EmptyIndicatorSection.error(
                text:
                    'Error generating text!\nCheck if content text are valid.',
                willHaveCircleAvatarInDarkMode: false,
                sholdRepeat: false,
              );
            },
            withContentText: (v) => _FinalWidget(
              content: v.content,
            ),
            withGeneratedText: (v) => _FinalWidget(
              content: v.content,
            ),
          );
        },
      ),
    );
  }
}

class _FinalWidget extends StatelessWidget with CopyToClipboardMixin {
  final String content;
  const _FinalWidget({
    required this.content,
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
            bottom: 20,
          ),
          child: Column(
            children: [
              CustomHeader(
                headerTitle: 'Output text',
                actions: [
                  CustomActionHeader(
                    tooltip: 'Copy all output to clipboard',
                    iconData: Icons.copy,
                    onPressed: () async {
                      final outputCubit = context.read<ContentCubit>();
                      final content = outputCubit.state.content;
                      copyText(content, context);
                    },
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surfaceVariant,
                  borderRadius: BorderRadius.circular(24),
                ),
                padding: const EdgeInsets.all(8),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Theme.of(context).colorScheme.onInverseSurface,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: SingleChildScrollView(
                      child: Text(content),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
