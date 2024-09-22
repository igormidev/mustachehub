import 'package:flutter/foundation.dart';
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
    state.when(
      normal: (ContentInput textOutput) {
        int index = 0;

        final a = dependencies.map((e) => e.input.willBreakLine).toList();
        final b = textOutput.texts.map((e) => e.willBreakLine).toList();
        final didSomeToggleBeenPressed = listEquals(a, b);

        final reCalculationIsNeeded = dependencies.isEmpty ||
            dependencies.length != textOutput.texts.length ||
            didSomeToggleBeenPressed == false;
        if (reCalculationIsNeeded == false) {
          return;
        }

        // The uuid and the focus node of dependencies
        final Map<String, FocusNode> cacheFocusNodes = {};
        for (final d in dependencies) {
          cacheFocusNodes[d.input.uuid] = d.textfieldFocusNode;
        }

        dependencies = [];
        for (final ContentTextSectionInput output in textOutput.texts) {
          index++;
          final VariablesInfoHighlightTextEditingController controller =
              VariablesInfoHighlightTextEditingController(
            textAnalyserBase: TextAnalyser(),
            text: output.content,
          );

          controller.setFlatMap(context.read<VariablesCubit>().state.flatMap);

          final cacheFieldNode = cacheFocusNodes[output.uuid];
          final fieldNode = cacheFieldNode ?? FocusNode();

          final OptionsController<ChoosableVariableImplementations>
              optionsController =
              OptionsController<ChoosableVariableImplementations>(
            textfieldFocusNode: fieldNode,
            textEditingController: controller,
            context: context,
            // optionAsString: (option) => option.name,
            optionAsString: choosableVariableImplementation,
            overlay: Overlay.of(
              NavigatorService.i.dashboardNavigatorKey.currentContext!,
            ),
            tileHeight: 40,
            onTextAddedCallback: (option, newEditingValue) {
              notifyContentCubit(
                output: output.copyWith(content: newEditingValue.text),
              );
            },
            selectInCursorParser: (option) {
              return InsertInCursorPayload(
                cursorIndexChangeQuantity: option.map(
                  text: (value) => value.map(
                    text: (_) => 2,
                    boolean: (_) => -3 - value.variableName.length,
                    choice: (_) => -3 - value.variableName.length,
                    model: (_) => -3 - value.variableName.length,
                  ),
                  boolean: (value) => -3 - value.variableName.length,
                  choice: (value) => -3 - value.variableName.length,
                  model: (value) => -3 - value.variableName.length,
                ),
                text: option.map(
                  text: (value) {
                    final name = value.variableName.replaceAll('.text', '');
                    return value.textImplementation.map(
                      textValue: (_) => '$name.text',
                      normalValue: (_) {
                        return '#$name.isEmpty}}{{/$name.isEmpty';
                      },
                      invertedValue: (_) {
                        return '^$name.isNotEmpty}}{{/$name.isNotEmpty';
                      },
                    );
                  },
                  boolean: (value) {
                    final name = value.variableName;
                    return value.booleanImplementation.map(
                      normalValue: (_) {
                        return '#$name}}{{/$name';
                      },
                      invertedValue: (_) {
                        return '^$name}}{{/$name';
                      },
                    );
                  },
                  choice: (value) {
                    final name = value.variableName;
                    return value.choiceImplementation.map(
                      textValue: (_) => '$name.text',
                      normalValue: (_) {
                        return '#$name}}{{/$name';
                      },
                      invertedValue: (_) {
                        return '^$name}}{{/$name';
                      },
                    );
                  },
                  model: (value) {
                    final name = value.variableName;
                    return value.modelImplementation.map(
                      normalValue: (_) {
                        return '#$name}}{{/$name';
                      },
                      invertedValue: (_) {
                        return '^$name}}{{/$name';
                      },
                    );
                  },
                ),
              );
            },
          );

          Future.delayed(const Duration(milliseconds: 100), () {
            if (!mounted) return;
            notifyContentCubit(output: output);
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

          final titleController = TextEditingController(
            text: output.title.isEmpty ? 'Section $index' : output.title,
          );

          // If only contains one section, we don't need to display that label
          final willDisplayEditLabel = textOutput.texts.length > 1;

          // Dont need to have break previous line option if it is
          // the fisrt section and don't have a previous section
          final willContainBreakLineToggleOption = index > 1;

          dependencies.add(
            EditDependenciesCluster(
              textfieldFocusNode: fieldNode,
              titleController: titleController,
              controller: controller,
              optionsController: optionsController,
              input: output,
              decouncer: Debouncer(timerDuration: 800.ms),
              willDisplayEditLabel: willDisplayEditLabel,
              willContainBreakLineToggleOption:
                  willContainBreakLineToggleOption,
            ),
          );
        }
      },
    );

    setState(() {});
  }

  void notifyContentCubit({
    required ContentTextSectionInput output,
  }) {
    final contentCubit = context.read<ContentStringCubit>();
    contentCubit.setCubit(input: output);
  }
}

String choosableVariableImplementation(
  ChoosableVariableImplementations option,
) =>
    option.map(
      boolean: (value) => value.booleanImplementation.map(
        normalValue: (impl) {
          return '#${value.variableName}';
        },
        invertedValue: (impl) {
          return '^${value.variableName}';
        },
      ),
      choice: (value) => value.choiceImplementation.map(
        textValue: (impl) => '${value.variableName}.text',
        normalValue: (impl) {
          return '# ${value.variableName}';
        },
        invertedValue: (impl) {
          return ' ^${value.variableName}';
        },
      ),
      text: (value) => value.textImplementation.map(
        textValue: (impl) => value.variableName,
        normalValue: (impl) {
          return '# ${value.variableName}';
        },
        invertedValue: (impl) {
          return '^ ${value.variableName}';
        },
      ),
      model: (value) => value.modelImplementation.map(
        normalValue: (impl) {
          return '# ${value.variableName}';
        },
        invertedValue: (impl) {
          return '^ ${value.variableName}';
        },
      ),
    );
