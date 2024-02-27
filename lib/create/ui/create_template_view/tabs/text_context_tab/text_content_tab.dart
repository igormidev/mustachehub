import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/suggestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/create/presenter/state/fields_text_size_state.dart';
import 'package:mustachehub/create/presenter/state/suggestion_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/widgets/headers/text_content_header.dart';
import 'package:mustachex/mustachex.dart';
import 'package:text_analyser/text_analyser.dart';

class TextContentTab extends StatefulWidget {
  const TextContentTab({super.key});

  @override
  State<TextContentTab> createState() => _TextContentTabState();
}

class _TextContentTabState extends State<TextContentTab> {
  final FocusNode textfieldFocusNode = FocusNode();
  late final VariablesInfoHighlightTextEditingController controller;
  late final OptionsController<TokenIdentifier> optionsController;
  final Debouncer decouncer = Debouncer(timerDuration: 800.ms);

  @override
  void initState() {
    super.initState();

    final contentCubit = context.read<ContentStringCubit>();
    controller = VariablesInfoHighlightTextEditingController(
      text: contentCubit.state.currentText,
    );

    optionsController = OptionsController<TokenIdentifier>(
      textfieldFocusNode: textfieldFocusNode,
      textEditingController: controller,
      context: context,
      optionAsString: (option) => option.name,
      overlay: Overlay.of(
        NavigatorService.i.dashboardNavigatorKey.currentContext!,
      ),
      onTextAddedCallback: (option, newEditingValue) {
        final sugestionCubit = context.read<SuggestionCubit>();
        final varCubit = context.read<VariablesCubit>();
        sugestionCubit.setSuggestions(
          input: newEditingValue.text,
          indexAtText: newEditingValue.selection.start,
          flatMap: varCubit.state.flatMap,
        );
      },
      selectInCursorParser: (option) {
        return InsertInCursorPayload(
          cursorIndexChangeQuantity: option.map(
            text: (value) => 2,
            boolean: (value) => -3 - value.name.length,
            model: (value) => -3 - value.name.length,
          ),
          text: option.map(
            text: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, controller.text);
              });
              return value.name;
            },
            boolean: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, controller.text);
              });
              return '#${value.name}}}{{/${value.name}';
            },
            model: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, controller.text);
              });
              return '#${value.name}}}{{/${value.name}';
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    optionsController.dispose();
    decouncer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeBloc = context.read<FieldsTextSizeCubit>();
    final contentCubit = context.read<ContentStringCubit>();
    final varCubit = context.read<VariablesCubit>();
    final sugestionCubit = context.read<SuggestionCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<SuggestionCubit, SuggestionState>(
          listener: (context, state) {
            state.maybeMap(
              withIdentifiers: (value) {
                controller.segmentsToTextInline(
                  value.segments,
                  context,
                );
              },
              orElse: () {},
            );
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            TextContentHeader(
              debouncer: decouncer,
            ),
            const SizedBox(height: 8),
            Expanded(
              child: BlocBuilder<FieldsTextSizeCubit, FieldsTextSizeState>(
                bloc: sizeBloc,
                builder: (context, varState) {
                  optionsController.updateContext(context);
                  return TextFormField(
                    focusNode: textfieldFocusNode,
                    controller: controller,
                    maxLines: 10,
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          height: 1,
                          fontSize: varState.testStringTextSize,
                        ),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 16, horizontal: 16),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      fillColor: Theme.of(context).colorScheme.onInverseSurface,
                      filled: true,
                    ),
                    textAlignVertical: TextAlignVertical.top,
                    inputFormatters: [
                      AddMustacheDelimmiterInputFormatter(
                        sugestionCubit: sugestionCubit,
                        varCubit: varCubit,
                        onAddedDellimiter: () {
                          final bloc = context.read<SuggestionCubit>();
                          optionsController.showOptionsMenuWithWrapperBuilder(
                            suggestionCardBuilder: (
                              BuildContext dialogContext,
                              listTilesWithOptionsBuilder,
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
                        _notifyContentCubit(contentCubit, text);
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _notifyContentCubit(ContentStringCubit contentCubit, String text) {
    try {
      final parser = Parser(text, null, '{{ }}');
      final tokens = parser.getTokens();
      contentCubit.registerTextWithTokens(
        newText: text,
        tokens: tokens,
      );
    } catch (_, __) {
      contentCubit.registerNormalText(
        newText: text,
      );
    }
  }
}

class SuggestionCard extends StatelessWidget {
  final Widget Function(List<TokenIdentifier> options)
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
            return listTilesWithOptionsBuilder(
              value.tokenIdentifiers.toList(),
            );
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
