import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/cubits/selected_template_cubit.dart';
import 'package:mustachehub/generate/presenter/states/selected_template_state.dart';
import 'package:mustachehub/generate/ui/views/generate_template_view/facades/selected_template_facade/selected_template_empty_face.dart';
import 'package:mustachehub/generate/ui/views/text_output_generator_view/text_output_generator_view.dart';

class SelectedTemplateFacade extends StatelessWidget {
  const SelectedTemplateFacade({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectedTemplateCubit, SelectedTemplateState>(
      builder: (context, state) {
        final Template? template = state.whenOrNull(
          withData: (Template template) {
            return template;
          },
        );

        if (template == null) {
          return const SelectedTemplateEmptyFace();
        }

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextOutputGeneratorView.fromTemplate(
            template: template,
          ),
        );
      },
    );
  }
}
