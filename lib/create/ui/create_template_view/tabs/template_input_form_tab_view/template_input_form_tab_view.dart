import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/state/content_string_state.dart';
import 'package:mustachehub/create/presenter/state/variables_state.dart';
import 'package:mustachehub/generate/presenter/mixins/set_generator_dependencies_mixin.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/template_input_form_page.dart';

class TemplateInputFormPageView extends StatefulWidget {
  const TemplateInputFormPageView({super.key});

  @override
  State<TemplateInputFormPageView> createState() =>
      _TemplateInputFormPageViewState();
}

class _TemplateInputFormPageViewState extends State<TemplateInputFormPageView>
    with SetGeneratorDependenciesMixin {
  @override
  void initState() {
    final varState = context.read<VariablesCubit>().state;
    final contentState = context.read<ContentStringCubit>().state;
    setDependencies(
      context: context,
      content: contentState.currentText,
      textPipes: varState.textPipes,
      booleanPipes: varState.booleanPipes,
      modelPipes: varState.modelPipes,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ContentStringCubit, ContentStringState>(
      listener: (context, contentState) async {
        final varState = context.read<VariablesCubit>().state;
        setDependencies(
          context: context,
          content: contentState.currentText,
          textPipes: varState.textPipes,
          booleanPipes: varState.booleanPipes,
          modelPipes: varState.modelPipes,
        );
      },
      builder: (context, contentState) {
        return BlocConsumer<VariablesCubit, VariablesState>(
          listener: (context, variablesCubit) async {
            setDependencies(
              context: context,
              content: contentState.currentText,
              textPipes: variablesCubit.textPipes,
              booleanPipes: variablesCubit.booleanPipes,
              modelPipes: variablesCubit.modelPipes,
            );
          },
          builder: (context, variablesCubit) {
            return TemplateInputFormPage(
              generatorData: ExpectedPayload(
                textPipes: variablesCubit.textPipes,
                booleanPipes: variablesCubit.booleanPipes,
                modelPipes: variablesCubit.modelPipes,
              ),
              content: contentState.currentText,
            );
          },
        );
      },
    );
  }
}
