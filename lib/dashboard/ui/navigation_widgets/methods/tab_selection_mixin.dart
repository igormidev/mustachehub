import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_navigation_state.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/presenter/router/mustache_router_delegate.dart';

mixin TabSelectionMixin on Widget {
  abstract final CurrentNavigationState currentNavigationState;
  abstract final NavigationPossibilitiesState state;
  abstract final List<EDashboardNavigationPossibilities> possibilities;

  void onTabSelected(int index, BuildContext context) {
    final MustacheRouterDelegate mustacheRouter =
        Router.of(context).routerDelegate as MustacheRouterDelegate;

    final EDashboardNavigationPossibilities choosedPossibility =
        possibilities[index];

    final selectedPossibility = mustacheRouter.currentConfiguration?.mapOrNull(
      loggedIn: (value) => value.selectedPossibility,
      loggedOut: (value) => value.selectedPossibility,
    );

    if (selectedPossibility?.possibilityEnum == choosedPossibility) {
      return;
    }
    final CurrentNavigationState newRoute = switch (choosedPossibility) {
      EDashboardNavigationPossibilities.collection =>
        const CollectionCurrentNavigationState(),
      EDashboardNavigationPossibilities.generateText =>
        const GenerateTextNavigationState(),
      EDashboardNavigationPossibilities.createMustache =>
        const CreateMustacheNavigationState(),
      EDashboardNavigationPossibilities.account =>
        const AccountNavigationState(),
      EDashboardNavigationPossibilities.auth =>
        AuthNavigationState.defaultRoute(),
      EDashboardNavigationPossibilities.settings =>
        const ConfigurationsNavigationState(),
      EDashboardNavigationPossibilities.becamePremium =>
        const BecamePremiumNavigationState(),
    };

    final router =
        (Router.of(context).routerDelegate as MustacheRouterDelegate);

    final newPossibility = router.state?.mapOrNull(
      loggedIn: (value) => LoggedIn(selectedPossibility: newRoute),
      loggedOut: (value) => LoggedOut(selectedPossibility: newRoute),
    );

    if (newPossibility == null) return;

    router.selectNavigation(newPossibility);

    // print('inner ${newRoute.possibilityEnum}');

    // Router.navigate(context, () {
    //   mustacheRouter.selectNavigation(NavigationPossibilitiesState.loggedOut(
    //     selectedPossibility: newRoute,
    //   ));
    // });

    // Router.of(context)
    //     .routeInformationParser!
    //     .parseRouteInformationWithDependencies(
    //       RouteInformation(
    //         uri: currentNavigationState.toUri(),
    //       ),
    //       context,
    //     );
  }
}
