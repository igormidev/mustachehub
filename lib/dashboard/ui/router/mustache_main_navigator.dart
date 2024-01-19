import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/presenter/states/auth_module_router.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_rail/dashboard_rail.dart';

class MustacheMainNavigator extends StatelessWidget {
  final ENavigationPossibilities possibility;
  final List<ENavigationPossibilities> possibilities;
  final GlobalKey<NavigatorState> navigatorKey;
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;

  const MustacheMainNavigator({
    super.key,
    required this.possibility,
    required this.possibilities,
    required this.navigatorKey,
    required this.onPopPageCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VisibilityWidthBased.fromMediaQueryScreenWidth(
          maximumWidth: ScreenSize.x1300,
          child: DashboardRail(
            selectedPossibility: possibility,
            possibilities: possibilities,
          ),
        ),
        VisibilityWidthBased.fromMediaQueryScreenWidth(
          minimumWidth: ScreenSize.x1300,
          child: DashboardDrawer(
            selectedPossibility: possibility,
            possibilities: possibilities,
          ),
        ),
        Expanded(
          child: Navigator(
            key: navigatorKey,
            pages: [
              switch (possibility) {
                ENavigationPossibilities.collection => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ENavigationPossibilities.generateText => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                ENavigationPossibilities.createMustache => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.red[300],
                    ),
                  ),
                ENavigationPossibilities.account => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                ENavigationPossibilities.auth => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: AuthModuleRouter(),
                  ),
                ENavigationPossibilities.settings => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                ENavigationPossibilities.becamePremium => MaterialPage(
                    key: ValueKey(possibility.name),
                    child: Container(
                      color: Colors.lime,
                    ),
                  ),
              }
            ],
            onPopPage: onPopPageCallback,
          ),
        ),
      ],
    );
  }
}
