import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/boolean_pipe_form.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/model_pipe_form.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/text_pipe_form.dart';

class TemplateInputFormPage extends StatelessWidget {
  final String content;
  final ExpectedPayload generatorData;

  const TemplateInputFormPage({
    super.key,
    required this.generatorData,
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
        return state.map(
          initial: (_) => const EmptyIndicatorSection.empty(
            text: 'No variables created',
            willHaveCircleAvatarInDarkMode: true,
          ),
          withValidPayload: (_) => _FinalWidget(
            generatorData,
            content,
          ),
          withRequiredFieldsPendency: (_) => _FinalWidget(
            generatorData,
            content,
          ),
        );
      },
    );
  }
}

class _FinalWidget extends StatelessWidget {
  final String content;
  final ExpectedPayload generatorData;
  const _FinalWidget(this.generatorData, this.content);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TextPipeForm(expectedPayload: generatorData, content: content),
        const Divider(height: 8),
        const SizedBox(height: 8),
        BooleanPipeForm(expectedPayload: generatorData, content: content),
        const SizedBox(height: 8),
        const Divider(height: 8),
        const SizedBox(height: 8),
        ModelPipeForm(expectedPayload: generatorData, content: content),
        const SizedBox(height: 80),
      ],
    );
  }
}
