import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/pages/splash_page/splash_page.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_main_navigator.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';

class NavigatorService {
  static final GlobalKey<NavigatorState> rootNavigatorState =
      GlobalKey<NavigatorState>();
  static final BuildContext rootContext = rootNavigatorState.currentContext!;
}

class MustacheRouterDelegate
    extends RouterDelegate<NavigationPossibilitiesState>
    with
        ChangeNotifier,
        PopNavigatorRouterDelegateMixin<NavigationPossibilitiesState> {
  MustacheRouterDelegate();

  @override
  final GlobalKey<NavigatorState> navigatorKey =
      NavigatorService.rootNavigatorState;

  NavigationPossibilitiesState? state;

  @override
  Future<void> setNewRoutePath(
    NavigationPossibilitiesState configuration,
  ) async {
    selectNavigation(configuration);
  }

  void selectNavigation(
    NavigationPossibilitiesState configuration,
  ) {
    state = configuration;
    final possibility = configuration.mapOrNull(
      loggedIn: (value) => value.selectedPossibility.possibilityEnum,
      loggedOut: (value) => value.selectedPossibility.possibilityEnum,
    );
    print('changedToPossibility $possibility');
    notifyListeners();
  }

  @override
  NavigationPossibilitiesState? get currentConfiguration => state;

  bool _handlePopPage(Route<dynamic> route, dynamic result) {
    final bool success = route.didPop(result);
    if (success) {
      notifyListeners();
    }
    return success;
  }

  @override
  Widget build(BuildContext context) {
    if (state == null) return SizedBox.fromSize();

    return state!.map(
      initial: (value) {
        return const SplashScreen();
      },
      loggedIn: (value) {
        print('value: ${value.selectedPossibility.possibilityEnum}');
        return MustacheMainNavigator(
          navigatorKey: navigatorKey,
          currentNavigationState: value.selectedPossibility,
          possibilities: value.possibilities,
          onPopPageCallback: _handlePopPage,
          state: value,
        );
      },
      loggedOut: (value) {
        print('value: ${value.selectedPossibility.possibilityEnum}');
        return MustacheMainNavigator(
          navigatorKey: navigatorKey,
          currentNavigationState: value.selectedPossibility,
          possibilities: value.possibilities,
          onPopPageCallback: _handlePopPage,
          state: value,
        );
      },
    );
  }
}
