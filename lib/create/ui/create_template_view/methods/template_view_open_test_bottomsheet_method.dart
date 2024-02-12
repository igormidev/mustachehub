import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/theme/components/custom_bottom_sheet.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/agregators/generate_dependencies_provider.dart';
import 'package:mustachehub/generate/ui/views/text_output_generator_view/text_output_generator_view.dart';

mixin TemplateViewOpenTestBottomsheetMethod {
  void openTestDialog(BuildContext context) {
    final contentCubit = context.read<ContentStringCubit>();
    final variablesCubit = context.read<VariablesCubit>();

    showCustomBottomSheet(
      context: context,
      horizontalPadding: 20,
      verticalPadding: 10,
      child: GenerateDependenciesProvider(
        contextWithDependencies: context,
        child: TextOutputGeneratorView(
          content: contentCubit.state.currentText,
          generatorData: ExpectedPayload(
            textPipes: variablesCubit.state.textPipes,
            booleanPipes: variablesCubit.state.booleanPipes,
            modelPipes: variablesCubit.state.modelPipes,
          ),
        ),
      ),
    );
  }
}
