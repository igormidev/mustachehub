import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

class MustacheRouteInformationParser
    extends RouteInformationParser<ENavigationPossibilities> {
  @override
  Future<ENavigationPossibilities> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    final String routeName = routeInformation.uri.path;

    final ENavigationPossibilities choosedPossibility = switch (routeName) {
      '/collection' => ENavigationPossibilities.collection,
      '/generateText' => ENavigationPossibilities.generateText,
      '/createMustache' => ENavigationPossibilities.createMustache,
      '/account' => ENavigationPossibilities.account,
      '/login' => ENavigationPossibilities.login,
      '/settings' => ENavigationPossibilities.settings,
      '/becamePremium' => ENavigationPossibilities.becamePremium,
      (_) => ENavigationPossibilities.DEFAULT_POSSIBILITY,
    };

    return Future.value(choosedPossibility);
  }

  @override
  RouteInformation restoreRouteInformation(
    ENavigationPossibilities configuration,
  ) {
    final String routeName = switch (configuration) {
      ENavigationPossibilities.collection => '/collection',
      ENavigationPossibilities.generateText => '/generateText',
      ENavigationPossibilities.createMustache => '/createMustache',
      ENavigationPossibilities.account => '/account',
      ENavigationPossibilities.login => '/login',
      ENavigationPossibilities.settings => '/settings',
      ENavigationPossibilities.becamePremium => '/becamePremium',
    };

    return RouteInformation(uri: Uri(path: routeName));
  }
}
