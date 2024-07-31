import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:text_analyser/text_analyser.dart';

class SectionContentField extends StatelessWidget {
  final double? fontSize;
  final FocusNode textfieldFocusNode;
  final VariablesInfoHighlightTextEditingController controller;
  final OptionsController<VariableImplementation> optionsController;
  final Debouncer decouncer;
  final ContentStringCubit contentStringCubit;
  final VariablesCubit variablesCubit;
  final SuggestionCubit suggestionCubit;
  final int index;
  final Function({required int index, required String output})
      notifyContentCubit;
  // _notifyContentCubit({required int index, required String output});

  const SectionContentField({
    super.key,
    required this.textfieldFocusNode,
    required this.optionsController,
    required this.fontSize,
    required this.controller,
    required this.decouncer,
    required this.contentStringCubit,
    required this.variablesCubit,
    required this.suggestionCubit,
    required this.index,
    required this.notifyContentCubit,
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
      child: TextFormField(
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
                    List<VariableImplementation> value,
                  ) listTilesWithOptionsBuilder,
                ) {
                  return BlocProvider<SuggestionCubit>.value(
                    value: bloc,
                    child: SuggestionCard(
                      listTilesWithOptionsBuilder: listTilesWithOptionsBuilder,
                    ),
                  );
                },
              );
            },
          ),
        ],
        onChanged: (final String text) {
          decouncer.resetDebounce(() {
            notifyContentCubit(output: text, index: index);
          });
        },
      ),
    );
  }
}
