import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/create/ui/create_template_view/tabs/variables_creation_tab/variables_creation_tab.dart';
import 'package:mustachehub/create/ui/create_template_view/views/create_template_tab_view/create_template_tab_view.dart';
import 'package:mustachehub/create/ui/create_template_view/widgets/create_template_bottom_navigation_bar/create_template_bottom_navigation_bar.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';

class CreateTemplateView extends StatelessWidget {
  const CreateTemplateView({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final width = constraints.maxWidth;
        final willShowTestButton = 800 < width && width <= 1300;

        return Scaffold(
          drawer: const VisibilityWidthBased.fromMediaQueryScreenWidth(
            maximumWidth: ScreenSize.x800,
            child: DashboardDrawer(),
          ),
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Create mustache template'),
            actions: [
              if (willShowTestButton)
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.science_rounded),
                ),
              IconButton(
                onPressed: () {},
                tooltip: 'Save template',
                icon: const Icon(
                  Icons.save_rounded,
                ),
              ),
            ],
          ),
          body: Builder(
            builder: (context) {
              if (width <= 800) {
                return const CreateTemplateTabView();
              } else if (750 < width && width <= 1300) {
                return Row(
                  children: [
                    Expanded(child: VariablesCreationTab()),
                    const VerticalDivider(width: 20),
                    Expanded(child: ColoredBox(color: Colors.brown[400]!)),
                  ],
                );
              } else if (1300 < width && width <= 1850) {
                return Row(
                  children: [
                    Expanded(child: VariablesCreationTab()),
                    const VerticalDivider(width: 20),
                    Expanded(child: ColoredBox(color: Colors.brown[400]!)),
                    const VerticalDivider(width: 20),
                    Expanded(child: Container(color: Colors.green[200])),
                  ],
                );
              } else {
                return Row(
                  children: [
                    Expanded(
                      child: VariablesCreationTab(),
                    ),
                    const VerticalDivider(width: 20),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.brown[400]!,
                      ),
                    ),
                    const VerticalDivider(width: 20),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.orange[400]!,
                      ),
                    ),
                    const VerticalDivider(width: 20),
                    Expanded(
                      child: ColoredBox(
                        color: Colors.pink[300]!,
                      ),
                    ),
                  ],
                );
              }
            },
          ),
          bottomNavigationBar: width <= 750
              ? const CreateTemplateBottomNavigationBar()
              : SizedBox.fromSize(),
        );
      },
    );
  }
}
