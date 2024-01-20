import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_navigation_possibility_state.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';
import 'package:mustachehub/auth/ui/conductor/auth_size_screen_conductor.dart';

class AuthConductorRouterDelegater extends RouterDelegate<EAuthPossibilities>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<EAuthPossibilities> {
  AuthNavigationPossibilityState state =
      AuthNavigationPossibilityState.definedVersion(
    selectedPossibility: EAuthPossibilities.DEFAULT_POSSIBILITY,
  );

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void selectNavigation(EAuthPossibilities selectedValue) {
    if (state.selectedPossibility == selectedValue) return;

    final AuthNavigationPossibilityState newState =
        AuthNavigationPossibilityState.definedVersion(
      selectedPossibility: selectedValue,
    );

    state = newState;
    notifyListeners();
  }

  @override
  Future<void> setNewRoutePath(
    EAuthPossibilities configuration,
  ) async {
    selectNavigation(configuration);
  }

  @override
  EAuthPossibilities? get currentConfiguration => state.selectedPossibility;

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    final bool success = route.didPop(result);
    notifyListeners();
    return success;
  }

  @override
  Widget build(BuildContext context) {
    return AuthSizeScreenConductor(
      navigatorKey: navigatorKey,
      onPopPageCallback: _handlePopPage,
    );
  }
}
