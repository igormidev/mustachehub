import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/cubits/content_string_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/presenter/cubits/variables_cubit.dart';
import 'package:mustachehub/create/presenter/state/content_string_state.dart';
import 'package:mustachehub/create/presenter/state/variables_state.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_section.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/generate/presenter/cubits/content_cubit.dart';
import 'package:mustachehub/generate/presenter/cubits/payload_cubit.dart';
import 'package:mustachehub/generate/presenter/mixins/set_generator_dependencies_mixin.dart';
import 'package:mustachehub/generate/presenter/states/payload_state.dart';
import 'package:mustachehub/generate/ui/pages/template_input_form_page/template_input_form_page.dart';

class CreateTemplateTabView extends StatefulWidget {
  const CreateTemplateTabView({super.key});

  @override
  State<CreateTemplateTabView> createState() => _CreateTemplateTabViewState();
}

class _CreateTemplateTabViewState extends State<CreateTemplateTabView>
    with SingleTickerProviderStateMixin, SetGeneratorDependenciesMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(_updateTabControllCubit);
  }

  _updateTabControllCubit() {
    final tabControllCubit = context.read<TabControllCubit>();
    tabControllCubit.changeTab(tabController.index);
  }

  @override
  void dispose() {
    tabController.dispose();
    tabController.removeListener(_updateTabControllCubit);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<TabControllCubit, int>(
      bloc: context.read<TabControllCubit>(),
      listener: (context, state) {
        tabController.animateTo(state);
      },
      child: TabBarView(
        controller: tabController,
        children: [
          VariablesCreationTab(),
          const TextContentSection(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Scaffold(
              body: const TemplateInputFormPageView(),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {},
                label: const Text('See text'),
                icon: const Icon(Icons.generating_tokens),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TemplateInputFormPageView extends StatelessWidget {
  const TemplateInputFormPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final payloadCubit = context.read<PayloadCubit>();
    final outputCubit = context.read<ContentCubit>();

    return BlocConsumer<ContentStringCubit, ContentStringState>(
      listener: (context, contentState) async {
        final varState = context.read<VariablesCubit>().state;
        await payloadCubit.updateContent(
          content: contentState.currentText,
          expectedPayload: ExpectedPayload(
            textPipes: varState.textPipes,
            booleanPipes: varState.booleanPipes,
            modelPipes: varState.modelPipes,
          ),
          expectedPayloadDto: null,
        );
        if (payloadCubit.state is InitialPayloadState) {
          outputCubit.setPendency(contentState.currentText);
        }
      },
      builder: (context, contentState) {
        return BlocConsumer<VariablesCubit, VariablesState>(
          listener: (context, variablesCubit) async {
            await payloadCubit.updateContent(
              content: contentState.currentText,
              expectedPayload: ExpectedPayload(
                textPipes: variablesCubit.textPipes,
                booleanPipes: variablesCubit.booleanPipes,
                modelPipes: variablesCubit.modelPipes,
              ),
              expectedPayloadDto: null,
            );
            if (payloadCubit.state is InitialPayloadState) {
              outputCubit.setPendency(contentState.currentText);
            }
          },
          builder: (context, variablesCubit) {
            return TemplateInputFormPage(
              generatorData: ExpectedPayload(
                textPipes: variablesCubit.textPipes,
                booleanPipes: variablesCubit.booleanPipes,
                modelPipes: variablesCubit.modelPipes,
              ),
              content: contentState.currentText,
            );
          },
        );
      },
    );
  }
}
