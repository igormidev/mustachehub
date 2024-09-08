import 'package:collection/collection.dart';
import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:text_analyser/text_analyser.dart';

class SectionContentField extends StatelessWidget with ValidatorsMixins {
  final double? fontSize;
  final FocusNode textfieldFocusNode;
  final TextEditingController titleController;
  final VariablesInfoHighlightTextEditingController controller;
  final OptionsController<ChoosableVariableImplementations> optionsController;
  final Debouncer decouncer;
  final ContentStringCubit contentStringCubit;
  final VariablesCubit variablesCubit;
  final SuggestionCubit suggestionCubit;
  final ContentTextSectionInput input;
  final bool willBreakLine;
  final bool willDisplayEditLabel;
  final bool willContainBreakLineToggleOption;

  final Function({
    // required bool willForceUpdate,
    required ContentTextSectionInput output,
  }) notifyContentCubit;

  const SectionContentField({
    super.key,
    required this.textfieldFocusNode,
    required this.titleController,
    required this.optionsController,
    required this.fontSize,
    required this.controller,
    required this.decouncer,
    required this.contentStringCubit,
    required this.variablesCubit,
    required this.suggestionCubit,
    required this.notifyContentCubit,
    required this.input,
    required this.willBreakLine,
    required this.willDisplayEditLabel,
    required this.willContainBreakLineToggleOption,
  });

  @override
  Widget build(BuildContext context) {
    optionsController.updateContext(context);

    final style = Theme.of(context).textTheme.bodyLarge?.copyWith(
          height: 1,
          fontSize: fontSize,
        );

    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Column(
        children: [
          if (willDisplayEditLabel) ...[
            TextFormField(
              controller: titleController,
              maxLines: 1,
              style: style,
              validator: isNotEmpty,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                isDense: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                fillColor: Colors.transparent,
                filled: true,
                hintText: 'Section title',
                suffixIcon: willContainBreakLineToggleOption
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Transform.scale(
                            scale: 0.7,
                            child: Tooltip(
                              message: 'Break line after previous section',
                              child: BlocBuilder<ContentStringCubit,
                                      ContentStringState>(
                                  builder: (context, state) {
                                final willBreakLineState = state.map(
                                  normal: (state) =>
                                      state.currentText.texts
                                          .singleWhereOrNull(
                                            (element) =>
                                                element.uuid == input.uuid,
                                          )
                                          ?.willBreakLine ??
                                      willBreakLine,
                                );

                                return Switch(
                                  value: willBreakLine,
                                  onChanged: (val) {
                                    final newContent = input.copyWith(
                                      content: controller.text,
                                      title: titleController.text,
                                      willBreakLine: !willBreakLineState,
                                    );
                                    notifyContentCubit(output: newContent);
                                  },
                                );
                              }),
                            ),
                          ),
                          const Tooltip(
                            message: 'This is a section. Section are used to '
                                'separate logic parts of template text.\n'
                                'This is useful to organize your template text. Read the documentation for more info\n'
                                'You can give a name for the section. Won\'t be '
                                'reflected in the final text.\nThe switch will '
                                'determine if,\nwhen using the template and copying the hole text,\na line break '
                                'will be added after the previous section or if it will be directly added right after '
                                'the last caracter of the previous section.',
                            child: Icon(
                              Icons.info,
                              size: 26,
                            ),
                          ),
                        ],
                      )
                    : null,
              ),
              onChanged: (value) {
                final newContent = input.copyWith(
                  content: controller.text,
                  title: value,
                );
                notifyContentCubit(output: newContent);
              },
            ),
            const SizedBox(height: 8),
          ],
          TextFormField(
            focusNode: textfieldFocusNode,
            controller: controller,
            maxLines: 5,
            style: style,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              fillColor: Theme.of(context).colorScheme.onInverseSurface,
              filled: true,
              hintText:
                  'Type your text here. Use {{}} to add variables.\nJust tap "{" after creating a variable...',
            ),
            textAlignVertical: TextAlignVertical.top,
            validator: isNotEmpty,
            inputFormatters: [
              AddMustacheDelimmiterInputFormatter(
                sugestionCubit: suggestionCubit,
                varCubit: variablesCubit,
                onAddedDellimiter: () {
                  final bloc = context.read<SuggestionCubit>();
                  optionsController.showOptionsMenuWithWrapperBuilder(
                    suggestionCardBuilder: (
                      BuildContext dialogContext,
                      Widget Function(
                        List<ChoosableVariableImplementations> value,
                      ) listTilesWithOptionsBuilder,
                    ) {
                      return BlocProvider<SuggestionCubit>.value(
                        value: bloc,
                        child: SuggestionCard(
                          listTilesWithOptionsBuilder:
                              listTilesWithOptionsBuilder,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
            onChanged: (final String text) {
              decouncer.resetDebounce(() {
                final newContent = input.copyWith(
                  content: text,
                  title: titleController.text,
                );
                notifyContentCubit(output: newContent);
              });
            },
          ),
        ],
      ),
    );
  }
}
