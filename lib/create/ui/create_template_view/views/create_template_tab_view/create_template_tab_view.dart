import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/create/presenter/cubits/tab_controll_cubit.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_input_form_tab_view/template_input_form_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/methods/open_template_output_bottomsheet_method.dart';
import 'package:mustachehub/generate/presenter/mixins/set_generator_dependencies_mixin.dart';

class CreateTemplateTabView extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  const CreateTemplateTabView({super.key, required this.formKey});

  @override
  State<CreateTemplateTabView> createState() => _CreateTemplateTabViewState();
}

class _CreateTemplateTabViewState extends State<CreateTemplateTabView>
    with
        SingleTickerProviderStateMixin,
        SetGeneratorDependenciesMixin,
        OpenTemplateOutputBottomsheetMethod {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    final tabControllCubit = context.read<TabControllCubit>();
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: tabControllCubit.state,
    );
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
          TextContentTab(
            formKey: widget.formKey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Scaffold(
              body: const TemplateInputFormPageView(),
              floatingActionButton: FloatingActionButton.extended(
                onPressed: () {
                  final isContentValid =
                      widget.formKey.currentState?.validate() ?? false;

                  if (isContentValid == false) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      ErrorSnackBar(
                        context: context,
                        text: 'Invalid content type. ',
                        description:
                            'Please fix the errors and ensure that all fields are filled in',
                      ),
                    );
                    return;
                  }
                  openTemplateOutputDialog(context);
                },
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
