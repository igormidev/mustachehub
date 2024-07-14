import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/confirm_dialog.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/clear_all_data_mixin.dart';
import 'package:mustachehub/create/presenter/states/current_template_type_state.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_save_dialog_.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_input_form_tab_view/template_input_form_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_output_tab_view/template_output_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/template_view_open_test_bottomsheet_method.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/create_template_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/create_template_bottom_navigation_bar/create_template_bottom_navigation_bar.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/load_initial_template_wrapper/load_editable_template_wrapper.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/set_initial_state_wrapper.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';

class CreateTemplateView extends StatefulWidget {
  final String? templateId;
  const CreateTemplateView({
    super.key,
    required this.templateId,
  });

  @override
  State<CreateTemplateView> createState() => _CreateTemplateViewState();
}

class _CreateTemplateViewState extends State<CreateTemplateView>
    with
        TemplateViewOpenTestBottomsheetMethod,
        OpenSaveDialog,
        ClearAllDataMixin {
  @override
  Widget build(BuildContext context) {
    return LoadEditableTemplateWrapper(
      templateUUID: widget.templateId,
      child: SetInitialStateWrapper(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final width = constraints.maxWidth;
            final willShowTestButton = 900 < width && width <= 1850;

            return Scaffold(
              drawer: context.drawerOrNull,
              appBar: AppBar(
                centerTitle: true,
                title: const Text('Create mustache template'),
                actions: [
                  BlocBuilder<CurrentTemplateTypeCubit,
                      CurrentTemplateTypeState>(builder: (context, state) {
                    return state.map(
                      withExistingTemplate: (_) => SizedBox.fromSize(),
                      creating: (_) {
                        return IconButton(
                          tooltip: 'Clear all',
                          onPressed: () async {
                            final confirm = await confirmDialog(context,
                                description:
                                    'This will clear all the data you have entered.');

                            if (confirm == true) {
                              if (context.mounted) {
                                clearAllDependencies(context);
                              }
                            }
                          },
                          icon: const Icon(Icons.cleaning_services_outlined),
                        );
                      },
                    );
                  }),
                  if (willShowTestButton)
                    IconButton(
                      tooltip: 'Test template',
                      onPressed: () => openTestDialog(context),
                      icon: const Icon(Icons.science_rounded),
                    ),
                  IconButton(
                    onPressed: () => openSaveDialog(context),
                    tooltip: 'Save template',
                    icon: const Icon(
                      Icons.save_rounded,
                    ),
                  ),
                ],
              ),
              body: Builder(
                builder: (context) {
                  if (width <= 900) {
                    return const CreateTemplateTabView();
                  } else if (750 < width && width <= 1300) {
                    return Row(
                      children: [
                        Expanded(child: VariablesCreationTab()),
                        const VerticalDivider(width: 20),
                        const Expanded(child: TextContentTab()),
                      ],
                    );
                  } else if (1300 < width && width <= 1850) {
                    return Row(
                      children: [
                        Expanded(child: VariablesCreationTab()),
                        const VerticalDivider(width: 20),
                        const Expanded(child: TextContentTab()),
                        const VerticalDivider(width: 20),
                        Expanded(
                          child: Column(
                            children: [
                              const Expanded(
                                  child: TemplateInputFormPageView()),
                              const Divider(),
                              Expanded(child: TemplateOutputTabView()),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Row(
                      children: [
                        Expanded(child: VariablesCreationTab()),
                        const VerticalDivider(width: 20),
                        const Expanded(child: TextContentTab()),
                        const VerticalDivider(width: 20),
                        const Expanded(child: TemplateInputFormPageView()),
                        const VerticalDivider(width: 20),
                        Expanded(child: TemplateOutputTabView()),
                      ],
                    );
                  }
                },
              ),
              bottomNavigationBar: width <= 900
                  ? const CreateTemplateBottomNavigationBar()
                  : SizedBox.fromSize(),
            );
          },
        ),
      ),
    );
  }
}
