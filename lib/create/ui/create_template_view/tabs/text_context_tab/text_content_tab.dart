import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:dart_debouncer/dart_debouncer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/create/presenter/controllers/variables_info_highlight_text_editing_controller.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/fields_text_size_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/sugestion_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/dto/token_identifier.dart';
import 'package:mustachehub/create/presenter/input_formaters/add_mustache_delimmiter_input_formater.dart';
import 'package:mustachehub/create/presenter/state/fields_text_size_state.dart';
import 'package:mustachehub/create/presenter/state/variables_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/widgets/headers/text_content_header.dart';
import 'package:mustachex/mustachex.dart';

class TextContentTab extends StatefulWidget {
  const TextContentTab({super.key});

  @override
  State<TextContentTab> createState() => _TextContentTabState();
}

class _TextContentTabState extends State<TextContentTab> {
  final FocusNode textfieldFocusNode = FocusNode();
  late final VariablesController controller;
  late final TextEditingController textEditingController;
  late final OptionsController<TokenIdentifier> optionsController;
  final Debouncer decouncer = Debouncer(timerDuration: 800.ms);

  @override
  void initState() {
    super.initState();

    final contentCubit = context.read<ContentStringCubit>();
    controller = VariablesController(
      text: contentCubit.state.currentText,
    );

    textEditingController =
        TextEditingController(text: contentCubit.state.currentText);

    final varCubit = context.read<VariablesCubit>();
    final vars = _getExpectedVariablesFromState(varCubit.state);
    controller.updateExpectedVariables(vars);

    final tokens = contentCubit.state.mapOrNull(
      withToken: (v) => v.tokensInIt,
    );

    controller.updateTokens(tokens);

    optionsController = OptionsController<TokenIdentifier>(
      textfieldFocusNode: textfieldFocusNode,
      textEditingController: textEditingController,
      context: context,
      optionAsString: (option) => option.name,
      overlay: Overlay.of(
        NavigatorService.i.dashboardNavigatorKey.currentContext!,
      ),
      onSelectInsertInCursor: (option) {
        return InsertInCursorPayload(
          cursorIndexChangeQuantity: option.map(
            text: (value) => 2,
            boolean: (value) => -3 - value.name.length,
            model: (value) => -3 - value.name.length,
          ),
          text: option.map(
            text: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
              });
              return value.name;
            },
            boolean: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
              });
              return '#${value.name}}}{{/${value.name}';
            },
            model: (value) {
              Future.delayed(const Duration(milliseconds: 800), () {
                _notifyContentCubit(contentCubit, textEditingController.text);
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
    final sugestionCubit = context.read<SugestionCubit>();

    return MultiBlocListener(
      listeners: [
        BlocListener<VariablesCubit, VariablesState>(
          bloc: context.read<VariablesCubit>(),
          listener: (context, state) {
            final vars = _getExpectedVariablesFromState(state);
            controller.updateExpectedVariables(vars);
          },
        ),
      ],
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          children: [
            TextContentHeader(
              controller: controller,
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
                    controller: textEditingController,
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
                        optionsController: optionsController,
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
      controller.updateTokens(tokens);
      contentCubit.registerTextWithTokens(
        newText: text,
        tokens: tokens,
      );
    } catch (_, __) {
      controller.updateTokens(null);
      contentCubit.registerNormalText(
        newText: text,
      );
    }
  }

  List<String> _getExpectedVariablesFromState(VariablesState state) {
    final List<String> expectedVariables = [];
    for (final pipe in <Pipe>[
      ...state.textPipes,
      ...state.booleanPipes,
      ...state.modelPipes,
    ]) {
      expectedVariables.add(pipe.mustacheName);
    }
    return expectedVariables;
  }
}
