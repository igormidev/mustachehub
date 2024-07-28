import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/responsiveness/extensions_screen_breakpoint.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/confirm_dialog.dart';
import 'package:mustachehub/create/presenter/cubits/current_template_type_cubit.dart';
import 'package:mustachehub/create/presenter/mixins/clear_all_data_mixin.dart';
import 'package:mustachehub/create/presenter/states/current_template_type_state.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_save_dialog_.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_tutorial_dialog.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_input_form_tab_view/template_input_form_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_output_tab_view/template_output_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/template_view_open_test_bottomsheet_method.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/create_template_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/create_template_bottom_navigation_bar/create_template_bottom_navigation_bar.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/load_initial_template_wrapper/load_editable_template_wrapper.dart';
import 'package:mustachehub/create/ui/create_template_view/wrappers/set_initial_state_wrapper/set_initial_state_wrapper.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:uuid/uuid.dart';

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
        ClearAllDataMixin,
        OpenTutorialDialog {
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
                leadingWidth: 176,
                leading: VisibilityWidthBased.fromMediaQueryScreenWidth(
                  minimumWidth: ScreenSize.x900,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Center(
                      child: Tooltip(
                        message: 'Open tutorial dialog',
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: OutlinedButton.icon(
                            onPressed: () => openTutorialDialog(context),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            label: const Text('Help tutorial'),
                            icon: const Icon(Icons.help),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                title: BlocBuilder<CurrentTemplateTypeCubit,
                    CurrentTemplateTypeState>(builder: (context, state) {
                  return state.map(
                    withExistingTemplate: (value) {
                      return Text(
                        context.whenSizeIsSmallerThen<String>(
                              size: ScreenSize.x900,
                              child: 'Edit',
                            ) ??
                            'Edit mustache template',
                      );
                    },
                    creating: (_) {
                      return Text(
                        context.whenSizeIsSmallerThen<String>(
                              size: ScreenSize.x900,
                              child: 'Create',
                            ) ??
                            'Create mustache template',
                      );
                    },
                  );
                }),
                actions: [
                  if (willShowTestButton)
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: Center(
                        child: SizedBox(
                          width: 160,
                          height: 40,
                          child: OutlinedButton.icon(
                            onPressed: () => openTestDialog(context),
                            style: OutlinedButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            label: const Text('Test template'),
                            icon: const Icon(Icons.science_rounded),
                          ),
                        ),
                      ),
                    ),
                  VisibilityWidthBased.fromMediaQueryScreenWidth(
                    maximumWidth: ScreenSize.x900,
                    child: IconButton(
                      tooltip: 'Tutorial',
                      onPressed: () => openTutorialDialog(context),
                      icon: const Icon(Icons.help),
                    ),
                  ),
                  BlocBuilder<CurrentTemplateTypeCubit,
                      CurrentTemplateTypeState>(builder: (context, state) {
                    return state.map(
                      withExistingTemplate: (_) => SizedBox.fromSize(),
                      creating: (_) {
                        return IconButton(
                          tooltip: 'Clear all',
                          onPressed: () async {
                            final confirm = await confirmDialog(
                              context,
                              description: 'This will clear all the '
                                  'data you have entered.',
                              continueLabelText: 'Clear',
                            );

                            if (confirm == true) {
                              if (context.mounted) {
                                clearAllDependencies(context);
                                // For some reason, the route is not being updated
                                // when the user clears all the data. So we need to
                                // pass a random value to the route to force the
                                // the update of the route in go router.
                                final randomJustToUpdate = const Uuid().v4();
                                if (context.mounted) {
                                  context.go('/createMustache',
                                      extra: randomJustToUpdate);
                                }

                                FirebaseAnalytics.instance
                                    .logEvent(name: 'clear_all_data');
                              }
                            }
                          },
                          icon: const Icon(Icons.cleaning_services_outlined),
                        );
                      },
                    );
                  }),
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
