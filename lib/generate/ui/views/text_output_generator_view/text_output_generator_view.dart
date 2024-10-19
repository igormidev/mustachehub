import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/displayable_content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/form_stats_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/app_core/theme/components/custom_bottom_sheet.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/methods/open_template_output_bottomsheet_method.dart';
import 'package:mustachehub/generate/presenter/mixins/set_generator_dependencies_mixin.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/template_input_form_page.dart';
import 'package:mustachehub/generate/ui/pages/text_output_page/text_output_page.dart';

class TextOutputGeneratorView extends StatefulWidget {
  final PackageInfo? info;
  final ExpectedPayload generatorData;
  final ContentInput content;

  const TextOutputGeneratorView({
    super.key,
    required this.content,
    required this.info,
    required this.generatorData,
  });

  TextOutputGeneratorView.fromTemplate({
    Key? key,
    required Template template,
  }) : this(
          key: key,
          info: template.info,
          content: template.output,
          generatorData: ExpectedPayload(
            textPipes: template.payload.textPipes,
            booleanPipes: template.payload.booleanPipes,
            choicePipes: template.payload.choicePipes,
            modelPipes: template.payload.modelPipes,
          ),
        );

  @override
  State<TextOutputGeneratorView> createState() =>
      _TextOutputGeneratorViewState();
}

class _TextOutputGeneratorViewState extends State<TextOutputGeneratorView>
    with SetGeneratorDependenciesMixin, OpenTemplateOutputBottomsheetMethod {
  @override
  void initState() {
    super.initState();
    Future.microtask(() async {
      setDependencies(
        context: context,
        output: widget.content,
        packageInfo: widget.info,
        textPipes: widget.generatorData.textPipes,
        booleanPipes: widget.generatorData.booleanPipes,
        choicePipes: widget.generatorData.choicePipes,
        modelPipes: widget.generatorData.modelPipes,
      );
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      contentBloc(context.read<ContentCubit>().state);
    });
  }

  // @override
  // void didUpdateWidget(covariant TextOutputGeneratorView oldWidget) {
  //   print('Widget updated');
  //   super.didUpdateWidget(oldWidget);
  //   contentBloc(context.read<ContentCubit>().state);
  // }

  // @override
  // void didChangeDependencies() {
  //   print('Dependencies changed');
  //   super.didChangeDependencies();
  // }

  void contentBloc(ContentState state) {
    state.whenOrNull(
      withGeneratedText: (value) {
        context
            .read<DisplayableContentCubit>()
            .setDisplayableContent(value, context);
      },
      withContentText: (value) {
        context
            .read<DisplayableContentCubit>()
            .setDisplayableContent(value, context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final formKey = context.read<PayloadCubit>().formKey;

    return BlocListener<ContentCubit, ContentState>(
      listener: (context, state) {
        contentBloc(state);
      },
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          if (width <= 900) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Scaffold(
                body: Form(
                  key: formKey,
                  child: TemplateInputFormPage(
                    generatorData: widget.generatorData,
                    output: widget.content,
                  ),
                ),
                floatingActionButton: FloatingActionButton.extended(
                  tooltip: 'See the text output preview',
                  onPressed: () {
                    // print(context.read<DisplayableContentCubit>().state);

                    // openTemplateOutputDialog(context);
                    showCustomBottomSheet(
                      context: context,
                      horizontalPadding: 20,
                      verticalPadding: 10,
                      child: MultiBlocProvider(
                        providers: [
                          RepositoryProvider.value(
                            value: context.read<DtoAdapter>(),
                          ),
                          BlocProvider.value(
                            value: context.read<ContentCubit>(),
                          ),
                          BlocProvider.value(
                            value: context.read<FormStatsCubit>(),
                          ),
                          BlocProvider.value(
                            value: context.read<PayloadCubit>(),
                          ),
                          BlocProvider.value(
                            value: context.read<DisplayableContentCubit>(),
                          ),
                        ],
                        child: TextOutputPage(
                          output: widget.content,
                          expectedPayload: widget.generatorData,
                          // formKey: formKey,
                        ),
                      ),

                      // child: GenerateDependenciesProvider(
                      //   context: context,
                      //   child: TextOutputPage(
                      //     output: widget.content,
                      //     expectedPayload: widget.generatorData,
                      //     formKey: formKey,
                      //   ),
                      // ),

                      // child: GenerateDependenciesProvider(
                      //   context: context,
                      //   child: TemplateOutputTabView(),
                      // ),
                    );
                  },
                  label: const Text('See text'),
                  icon: const Icon(Icons.generating_tokens),
                ),
              ),
            );
          }

          return Form(
            key: formKey,
            child: Row(
              children: [
                Expanded(
                  child: TemplateInputFormPage(
                    generatorData: widget.generatorData,
                    output: widget.content,
                  ),
                ),
                const VerticalDivider(width: 20),
                Expanded(
                  child: TextOutputPage(
                    output: widget.content,
                    expectedPayload: widget.generatorData,
                    // formKey: formKey,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
