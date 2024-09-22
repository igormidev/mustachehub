import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/mixins/set_generator_dependencies_mixin.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/template_input_form_page.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/text_output_page.dart';

class TextOutputGeneratorView extends StatefulWidget {
  final PackageInfo? info;
  final ExpectedPayload generatorData;
  final ContentInput content;

  const TextOutputGeneratorView({
    super.key,
    required this.content,
    required this.info,
    required this.generatorData,
  });

  TextOutputGeneratorView.fromTemplate({
    Key? key,
    required Template template,
  }) : this(
          key: key,
          info: template.info,
          content: template.output,
          generatorData: ExpectedPayload(
            textPipes: template.payload.textPipes,
            booleanPipes: template.payload.booleanPipes,
            choicePipes: template.payload.choicePipes,
            modelPipes: template.payload.modelPipes,
          ),
        );

  @override
  State<TextOutputGeneratorView> createState() =>
      _TextOutputGeneratorViewState();
}

class _TextOutputGeneratorViewState extends State<TextOutputGeneratorView>
    with SetGeneratorDependenciesMixin {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      setDependencies(
        context: context,
        output: widget.content,
        packageInfo: widget.info,
        textPipes: widget.generatorData.textPipes,
        booleanPipes: widget.generatorData.booleanPipes,
        choicePipes: widget.generatorData.choicePipes,
        modelPipes: widget.generatorData.modelPipes,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<PayloadCubit>().formKey;

    return Form(
      key: formKey,
      child: Row(
        children: [
          Expanded(
            child: TemplateInputFormPage(
              generatorData: widget.generatorData,
              output: widget.content,
            ),
          ),
          const VerticalDivider(width: 20),
          Expanded(
            child: TextOutputPage(
              output: widget.content,
              expectedPayload: widget.generatorData,
              formKey: formKey,
            ),
          ),
        ],
      ),
    );
  }
}
