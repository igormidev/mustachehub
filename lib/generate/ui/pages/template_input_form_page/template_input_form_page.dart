import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/empty_template_input_section.dart';
import 'package:mustachehub/generate/presenter/cubits/packages_info_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/boolean_pipe_form/boolean_pipe_form.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/choice_pipe_form/choice_pipe_form.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/model_pipe_form/model_pipe_form.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/widgets/pipe_forms_display/text_pipe_form/text_pipe_form.dart';

class TemplateInputFormPage extends StatelessWidget {
  final ContentInput output;
  final ExpectedPayload generatorData;

  const TemplateInputFormPage({
    super.key,
    required this.generatorData,
    required this.output,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PackagesInfoCubit, PackageInfo?>(
        builder: (context, packageInfo) {
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
              output,
              packageInfo,
            ),
            withRequiredFieldsPendency: (_) => _FinalWidget(
              generatorData,
              output,
              packageInfo,
            ),
          );
        },
      );
    });
  }
}

class _FinalWidget extends StatelessWidget {
  final PackageInfo? packageInfo;
  final ContentInput output;
  final ExpectedPayload generatorData;
  const _FinalWidget(this.generatorData, this.output, this.packageInfo);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (packageInfo != null) ...[
          Text(
            packageInfo?.name ?? '',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            packageInfo?.description ?? '',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const Divider(height: 8),
          const SizedBox(height: 8),
        ],
        TextPipeForm(expectedPayload: generatorData, output: output),
        if (generatorData.textPipes.isNotEmpty &&
            generatorData.booleanPipes.isNotEmpty) ...[
          const Divider(height: 8),
          const SizedBox(height: 8),
        ],
        BooleanPipeForm(expectedPayload: generatorData, output: output),
        if ((generatorData.textPipes.isNotEmpty ||
                generatorData.booleanPipes.isNotEmpty) &&
            generatorData.choicePipes.isNotEmpty) ...[
          const SizedBox(height: 8),
          const Divider(height: 8),
          const SizedBox(height: 8),
        ],
        ChoicePipeForm(expectedPayload: generatorData, output: output),
        if ((generatorData.textPipes.isNotEmpty ||
                generatorData.booleanPipes.isNotEmpty ||
                generatorData.choicePipes.isNotEmpty) &&
            generatorData.modelPipes.isNotEmpty) ...[
          const SizedBox(height: 8),
          const Divider(height: 8),
          const SizedBox(height: 8),
        ],
        ModelPipeForm(expectedPayload: generatorData, output: output),
        const SizedBox(height: 80),
      ],
    );
  }
}
