import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:text_analyser/text_analyser.dart';

mixin TextContentMethods on State<TextContentTab> {
  List<EditDependenciesCluster> dependencies = [];
  void setDependencies(ContentStringState state) {
    dependencies = [];
    state.when(
      normal: (ContentOutput textOutput) {
        int index = -1;
        for (final String output in textOutput.texts) {
          index++;

          final VariablesInfoHighlightTextEditingController controller =
              VariablesInfoHighlightTextEditingController(
            textAnalyserBase: const TextAnalyserBase(),
            text: output,
          );

          controller.setFlatMap(context.read<VariablesCubit>().state.flatMap);

          final fieldNode = FocusNode();

          final OptionsController<VariableImplementation> optionsController =
              OptionsController<VariableImplementation>(
            textfieldFocusNode: fieldNode,
            textEditingController: controller,
            context: context,
            // optionAsString: (option) => option.name,
            optionAsString: (option) => option.map(
              boolean: (value) => value.booleanImplementation.map(
                normalValue: (impl) {
                  return '#${value.booleanTokenIdentifier.name}';
                },
                invertedValue: (impl) {
                  return '^${value.booleanTokenIdentifier.name}';
                },
              ),
              text: (value) => value.textTokenIdentifier.name,
              model: (value) => '#${value.modelTokenIdentifier.name}',
            ),
            overlay: Overlay.of(
              NavigatorService.i.dashboardNavigatorKey.currentContext!,
            ),
            onTextAddedCallback: (option, newEditingValue) {
              notifyContentCubit(index: index, output: newEditingValue.text);
            },
            selectInCursorParser: (option) {
              return InsertInCursorPayload(
                cursorIndexChangeQuantity: option.map(
                  text: (value) => 2,
                  boolean: (value) =>
                      -3 - value.booleanTokenIdentifier.name.length,
                  model: (value) => -3 - value.modelTokenIdentifier.name.length,
                ),
                text: option.map(
                  text: (value) {
                    final name = value.textTokenIdentifier.name;
                    return name;
                  },
                  boolean: (value) {
                    final name = value.booleanTokenIdentifier.name;
                    return value.booleanImplementation.map(
                      normalValue: (_) {
                        return '#$name}}{{/$name';
                      },
                      invertedValue: (_) {
                        return '^$name}}{{/$name';
                      },
                    );
                  },
                  model: (value) {
                    final name = value.modelTokenIdentifier.name;
                    return '#$name}}{{/$name';
                  },
                ),
              );
            },
          );

          Future.delayed(const Duration(milliseconds: 200), () {
            if (!mounted) return;
            notifyContentCubit(index: index, output: output);
          });
          WidgetsBinding.instance.addPostFrameCallback((_) {
            controller.setCacheCS(Theme.of(context).colorScheme);
          });
          Future.delayed(
            const Duration(seconds: 1),
            () {
              controller.update();
            },
          );

          dependencies.add(
            EditDependenciesCluster(
              textfieldFocusNode: fieldNode,
              controller: controller,
              optionsController: optionsController,
              decouncer: Debouncer(timerDuration: 800.ms),
            ),
          );
        }
      },
    );

    setState(() {});
  }

  void notifyContentCubit({
    required int index,
    required String output,
  }) {
    final contentCubit = context.read<ContentStringCubit>();
    contentCubit.setCubit(
      index: index,
      text: output,
    );
  }
}
