import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachehub/create/presenter/states/fields_text_size_state.dart';
import 'package:mustachehub/create/presenter/states/suggestion_state.dart';
import 'package:mustachehub/create/presenter/states/variables_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_methods.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/widgets/section_content_field/section_content_field.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/cards/variable_creator_card/widgets/add_new_dotted_button.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/widgets/headers/text_content_header.dart';
import 'package:mustachehub/settings/interactor/cubit/theme_cubit.dart';
import 'package:mustachehub/settings/interactor/state/theme_state.dart';
import 'package:text_analyser/text_analyser.dart';

class TextContentTab extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const TextContentTab({super.key, required this.formKey});

  @override
  State<TextContentTab> createState() => _TextContentTabState();
}

class _TextContentTabState extends State<TextContentTab>
    with TextContentMethods {
  // TODO(IGOR): Extract this to a mixin
  @override
  void initState() {
    super.initState();

    final contentCubit = context.read<ContentStringCubit>();
    didCreatedAtLeastOneVariable = ValueNotifier(
      contentCubit.state.currentText.texts.isEmpty,
    );
    setDependencies(contentCubit.state);
    final varCubit = context.read<VariablesCubit>();
    didCreatedAtLeastOneVariable.value = !varCubit.state.isBlank;
  }

  @override
  void dispose() {
    disposeAll();
    didCreatedAtLeastOneVariable.dispose();
    super.dispose();
  }

  void disposeAll() {
    for (final cluster in dependencies) {
      cluster.controller.dispose();
      cluster.optionsController.dispose();
      cluster.decouncer.dispose();
    }
  }

  late final ValueNotifier<bool> didCreatedAtLeastOneVariable;

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.read<FieldsTextSizeCubit>();
    final contentCubit = context.read<ContentStringCubit>();
    final varCubit = context.read<VariablesCubit>();
    final sugestionCubit = context.read<SuggestionCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<ThemeCubit, ThemeState>(
          listener: (context, _) {
            for (final cluster in dependencies) {
              cluster.controller.setCacheCS(Theme.of(context).colorScheme);
            }
          },
        ),
        BlocListener<VariablesCubit, VariablesState>(
          listener: (context, state) {
            for (final cluster in dependencies) {
              cluster.controller.setFlatMap(state.flatMap);
            }

            didCreatedAtLeastOneVariable.value = !state.isBlank;

            // controller.setFlatMap(state.flatMap);
          },
        ),
        BlocListener<ContentStringCubit, ContentStringState>(
          listener: (context, state) {
            setDependencies(state);
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            const TextContentHeader(),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: didCreatedAtLeastOneVariable,
                builder: (context, bool didCreatedAtLeastOneVariable, child) {
                  if (didCreatedAtLeastOneVariable == false) {
                    return Tooltip(
                      triggerMode: TooltipTriggerMode.tap,
                      message: 'You must create at least one variable.\n'
                          'Create an text, condition or '
                          'list of items variable.',
                      child: IgnorePointer(
                        child: Opacity(
                          opacity: 0.7,
                          child: child,
                        ),
                      ),
                    );
                  }

                  return child!;
                },
                child: BlocBuilder<FieldsTextSizeCubit, FieldsTextSizeState>(
                  bloc: sizeBloc,
                  builder: (context, varState) {
                    final fontSize = varState.testStringTextSize;
                    return Form(
                      key: widget.formKey,
                      child: ListView(
                        children: [
                          ...dependencies.mapper((
                            EditDependenciesCluster cluster,
                            bool isFirst,
                            bool isLast,
                            int index,
                          ) {
                            return SectionContentField(
                              key: ValueKey(
                                  index.toString() + cluster.input.uuid),
                              input: cluster.input,
                              titleController: cluster.titleController,
                              textfieldFocusNode: cluster.textfieldFocusNode,
                              optionsController: cluster.optionsController,
                              fontSize: fontSize,
                              controller: cluster.controller,
                              decouncer: cluster.decouncer,
                              contentStringCubit: contentCubit,
                              variablesCubit: varCubit,
                              suggestionCubit: sugestionCubit,
                              notifyContentCubit: notifyContentCubit,
                              willBreakLine: cluster.input.willBreakLine,
                              willDisplayEditLabel:
                                  cluster.willDisplayEditLabel,
                              willContainBreakLineToggleOption:
                                  cluster.willContainBreakLineToggleOption,
                            );
                          }),
                          const SizedBox(height: 8),
                          AddNewButton(
                            onTap: () {
                              final isValid =
                                  widget.formKey.currentState!.validate();
                              if (!isValid) {
                                return;
                              }
                              final contentCubit =
                                  context.read<ContentStringCubit>();

                              contentCubit.addNew();
                            },
                            tooltip: 'Add a new template text section',
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SuggestionCard extends StatelessWidget {
  final Widget Function(List<ChoosableVariableImplementations> options)
      listTilesWithOptionsBuilder;

  const SuggestionCard({
    super.key,
    required this.listTilesWithOptionsBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SuggestionCubit, SuggestionState>(
      builder: (context, state) {
        return state.map(
          undefined: (value) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.search, size: 40),
                SizedBox(height: 16),
                Text('No variables found'),
              ],
            );
          },
          withIdentifiers: (value) {
            final items = value.tokenIdentifiers.toList();
            return listTilesWithOptionsBuilder(items);
          },
          errorOccurred: (value) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.error, size: 40),
                SizedBox(height: 16),
                Text('Error occurred'),
              ],
            );
          },
        );
      },
    );
  }
}

class EditDependenciesCluster {
  final bool willDisplayEditLabel;
  final bool willContainBreakLineToggleOption;
  final FocusNode textfieldFocusNode;
  final TextEditingController titleController;
  final VariablesInfoHighlightTextEditingController controller;
  final OptionsController<ChoosableVariableImplementations> optionsController;
  final Debouncer decouncer;
  final ContentTextSectionInput input;

  const EditDependenciesCluster({
    required this.titleController,
    required this.textfieldFocusNode,
    required this.controller,
    required this.optionsController,
    required this.decouncer,
    required this.input,
    required this.willDisplayEditLabel,
    required this.willContainBreakLineToggleOption,
  });
}
