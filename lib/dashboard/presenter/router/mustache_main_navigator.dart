import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_module.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_rail/dashboard_rail.dart';
import 'package:mustachehub/dashboard/ui/pages/not_found_404_page/not_found_404_page.dart';

class MustacheMainNavigator extends StatelessWidget {
  final NavigationPossibilitiesState state;
  final CurrentNavigationState currentNavigationState;
  final List<EDashboardNavigationPossibilities> possibilities;
  final GlobalKey<NavigatorState> navigatorKey;
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;

  const MustacheMainNavigator({
    super.key,
    required this.currentNavigationState,
    required this.state,
    required this.possibilities,
    required this.navigatorKey,
    required this.onPopPageCallback,
  });

  @override
  Widget build(BuildContext context) {
    final int selectedIndex =
        possibilities.indexOf(currentNavigationState.possibilityEnum);

    return Row(
      children: [
        VisibilityWidthBased.fromMediaQueryScreenWidth(
          maximumWidth: ScreenSize.x1300,
          child: DashboardRail(
            state: state,
            selectedIndex: selectedIndex,
            currentNavigationState: currentNavigationState,
            possibilities: possibilities,
          ),
        ),
        VisibilityWidthBased.fromMediaQueryScreenWidth(
          minimumWidth: ScreenSize.x1300,
          child: DashboardDrawer(
            state: state,
            selectedIndex: selectedIndex,
            currentNavigationState: currentNavigationState,
            possibilities: possibilities,
          ),
        ),
        Expanded(
          child: Navigator(
            key: navigatorKey,
            pages: [
              switch (currentNavigationState.possibilityEnum) {
                EDashboardNavigationPossibilities.collection =>
                  const MaterialPage(
                    // key: const ValueKey(
                    //   EDashboardNavigationPossibilities.collection,
                    // ),
                    // child: Container(
                    //   color: Colors.green,
                    // ),
                    child: NotFound404Page(),
                  ),
                EDashboardNavigationPossibilities.generateText => MaterialPage(
                    key: const ValueKey(
                        EDashboardNavigationPossibilities.generateText),
                    child: Container(
                      color: Colors.blueGrey,
                    ),
                  ),
                EDashboardNavigationPossibilities.createMustache =>
                  MaterialPage(
                    key: const ValueKey(
                        EDashboardNavigationPossibilities.createMustache),
                    child: Container(
                      color: Colors.red[300],
                    ),
                  ),
                EDashboardNavigationPossibilities.account => MaterialPage(
                    key: const ValueKey(
                        EDashboardNavigationPossibilities.account),
                    child: Container(
                      color: Colors.brown,
                    ),
                  ),
                EDashboardNavigationPossibilities.auth => const MaterialPage(
                    key: ValueKey(EDashboardNavigationPossibilities.auth),
                    child: AuthModule(),
                  ),
                EDashboardNavigationPossibilities.settings => MaterialPage(
                    key: const ValueKey(
                        EDashboardNavigationPossibilities.settings),
                    child: Container(
                      color: Colors.orange,
                    ),
                  ),
                EDashboardNavigationPossibilities.becamePremium => MaterialPage(
                    key: const ValueKey(
                        EDashboardNavigationPossibilities.becamePremium),
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
