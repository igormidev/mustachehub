import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachehub/create/presenter/states/variables_state.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/text_output_page.dart';

class TemplateOutputTabView extends StatelessWidget {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TemplateOutputTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContentStringCubit, ContentStringState>(
        builder: (context, contentState) {
      return BlocBuilder<VariablesCubit, VariablesState>(
          builder: (context, variablesCubit) {
        return TextOutputPage(
          output: contentState.currentText,
          expectedPayload: ExpectedPayload(
            textPipes: variablesCubit.textPipes,
            booleanPipes: variablesCubit.booleanPipes,
            choicePipes: variablesCubit.choicePipes,
            modelPipes: variablesCubit.modelPipes,
          ),
        );
      });
    });
  }
}
