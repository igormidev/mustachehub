import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_main_navigator.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';

class MustacheRouterDelegate extends RouterDelegate<ENavigationPossibilities>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<ENavigationPossibilities> {
  MustacheRouterDelegate();

  NavigationPossibilitiesState state = NavigationPossibilitiesState.loggedOut();

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void setUserToLoggedIn() {
    state = LoggedIn();
    notifyListeners();
  }

  void setUserToLoggedOut() {
    state = LoggedOut();
    notifyListeners();
  }

  void selectNavigation(ENavigationPossibilities selectedValue) {
    if (state.selectedPossibility == selectedValue) return;
    if (state is LoggedIn) {
      final LoggedIn loggedInState = state as LoggedIn;

      final isValidPossibility =
          loggedInState.possibilities.contains(selectedValue);

      if (isValidPossibility) {
        state = NavigationPossibilitiesState.loggedIn(
          selectedPossibility: selectedValue,
        );
      } else {
        state = NavigationPossibilitiesState.loggedIn(
          selectedPossibility: ENavigationPossibilities.account,
        );
      }
    } else if (state is LoggedOut) {
      final LoggedOut loggedOutState = state as LoggedOut;

      final isValidPossibility =
          loggedOutState.possibilities.contains(selectedValue);

      if (isValidPossibility) {
        state = NavigationPossibilitiesState.loggedOut(
          selectedPossibility: selectedValue,
        );
      } else {
        state = NavigationPossibilitiesState.loggedOut(
          selectedPossibility: ENavigationPossibilities.login,
        );
      }
    }
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(
    ENavigationPossibilities configuration,
  ) async {
    selectNavigation(configuration);
  }

  @override
  ENavigationPossibilities get currentConfiguration =>
      state.selectedPossibility;

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    final bool success = route.didPop(result);
    notifyListeners();
    return success;
  }

  @override
  Widget build(BuildContext context) {
    final ENavigationPossibilities possibility = state.selectedPossibility;
    final List<ENavigationPossibilities> possibilities = state.possibilities;

    return MustacheMainNavigator(
      navigatorKey: navigatorKey,
      possibility: possibility,
      possibilities: possibilities,
      onPopPageCallback: _handlePopPage,
    );
  }
}
