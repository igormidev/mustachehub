import 'package:flutter/material.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/open_save_dialog_.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_input_form_tab_view/template_input_form_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/template_output_tab_view/template_output_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/text_context_tab/text_content_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/methods/template_view_open_test_bottomsheet_method.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/create_template_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/create_template_bottom_navigation_bar/create_template_bottom_navigation_bar.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';

class CreateTemplateView extends StatelessWidget
    with TemplateViewOpenTestBottomsheetMethod, OpenSaveDialog {
  const CreateTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final willShowTestButton = 900 < width && width <= 1850;

        return Scaffold(
          drawer: context.drawerOrNull,
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Create mustache template'),
            actions: [
              if (willShowTestButton)
                IconButton(
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
                          const Expanded(child: TemplateInputFormPageView()),
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
    );
  }
}
