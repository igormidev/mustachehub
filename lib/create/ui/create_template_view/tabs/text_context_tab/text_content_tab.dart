import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  const TextContentTab({super.key});

  @override
  State<TextContentTab> createState() => _TextContentTabState();
}

class _TextContentTabState extends State<TextContentTab>
    with TextContentMethods {
  // final FocusNode textfieldFocusNode = FocusNode();
  // late final VariablesInfoHighlightTextEditingController controller;
  // late final OptionsController<VariableImplementation> optionsController;
  // final Debouncer decouncer = Debouncer(timerDuration: 800.ms);

  // TODO(IGOR): Extract this to a mixin
  @override
  void initState() {
    super.initState();

    final contentCubit = context.read<ContentStringCubit>();
    setDependencies(contentCubit.state);
  }

  @override
  void dispose() {
    disposeAll();
    super.dispose();
  }

  void disposeAll() {
    for (final cluster in dependencies) {
      cluster.controller.dispose();
      cluster.optionsController.dispose();
      cluster.decouncer.dispose();
    }
  }

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
            BlocBuilder<FieldsTextSizeCubit, FieldsTextSizeState>(
              bloc: sizeBloc,
              builder: (context, varState) {
                final fontSize = varState.testStringTextSize;
                return Column(
                  children: dependencies.mapper((
                    EditDependenciesCluster cluster,
                    bool isFirst,
                    bool isLast,
                    int index,
                  ) {
                    return SectionContentField(
                      textfieldFocusNode: cluster.textfieldFocusNode,
                      optionsController: cluster.optionsController,
                      fontSize: fontSize,
                      controller: cluster.controller,
                      decouncer: cluster.decouncer,
                      contentStringCubit: contentCubit,
                      variablesCubit: varCubit,
                      suggestionCubit: sugestionCubit,
                      notifyContentCubit: notifyContentCubit,
                      index: dependencies.indexOf(cluster),
                    );
                  }).toList(),
                );
              },
            ),
            const SizedBox(height: 8),
            AddNewButton(
              onTap: () {
                final contentCubit = context.read<ContentStringCubit>();
                contentCubit.addNew();
              },
              tooltip: 'Add a new content text',
            )
          ],
        ),
      ),
    );
  }
}

class SuggestionCard extends StatelessWidget {
  final Widget Function(List<VariableImplementation> options)
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
  final FocusNode textfieldFocusNode;
  final VariablesInfoHighlightTextEditingController controller;
  final OptionsController<VariableImplementation> optionsController;
  final Debouncer decouncer;

  const EditDependenciesCluster({
    required this.textfieldFocusNode,
    required this.controller,
    required this.optionsController,
    required this.decouncer,
  });
}
