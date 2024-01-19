import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_navigation_possibility_state.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';
import 'package:mustachehub/auth/ui/conductor/auth_size_screen_conductor.dart';

class AuthConductorRouterDelegater extends RouterDelegate<EAuthPossibilities>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<EAuthPossibilities> {
  AuthNavigationPossibilityState state =
      AuthNavigationPossibilityState.initial();

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  void selectNavigation(EAuthPossibilities selectedValue) {
    if (state.selectedPossibility == selectedValue) return;

    final AuthNavigationPossibilityState? newState = state.mapOrNull(
      desktopVersion: (value) {
        return AuthNavigationPossibilityState.desktopVersion(
          selectedPossibility: selectedValue,
        );
      },
      mobileVersion: (value) {
        return AuthNavigationPossibilityState.mobileVersion(
          selectedPossibility: selectedValue,
        );
      },
    );
    if (newState != null) {
      state = newState;
      notifyListeners();
    } else {
      state = AuthNavigationPossibilityState.undefinedVersion(
        selectedPossibility: selectedValue,
      );
      notifyListeners();
    }
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
    if (state.selectedPossibility == null) const SizedBox.shrink();

    return AuthSizeScreenConductor(
      onPopPageCallback: _handlePopPage,
    );
  }
}
