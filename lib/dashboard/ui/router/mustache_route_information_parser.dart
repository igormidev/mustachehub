import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

class MustacheRouteInformationParser
    extends RouteInformationParser<ENavigationPossibilities> {
  @override
  Future<ENavigationPossibilities> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    final String routeName = routeInformation.uri.path;

    final ENavigationPossibilities _ = switch (routeName) {
      '/collection' => ENavigationPossibilities.collection,
      '/generateText' => ENavigationPossibilities.generateText,
      '/createMustache' => ENavigationPossibilities.createMustache,
      '/account' => ENavigationPossibilities.account,
      '/auth' => ENavigationPossibilities.auth,
      '/settings' => ENavigationPossibilities.settings,
      '/becamePremium' => ENavigationPossibilities.becamePremium,
      (_) => ENavigationPossibilities.DEFAULT_POSSIBILITY,
    };

    final ENavigationPossibilities choosedPossibility;
    if (routeName.startsWith('/collection')) {
      choosedPossibility = ENavigationPossibilities.collection;
    } else if (routeName.startsWith('/generateText')) {
      choosedPossibility = ENavigationPossibilities.generateText;
    } else if (routeName.startsWith('/createMustache')) {
      choosedPossibility = ENavigationPossibilities.createMustache;
    } else if (routeName.startsWith('/account')) {
      choosedPossibility = ENavigationPossibilities.account;
    } else if (routeName.startsWith('/auth')) {
      choosedPossibility = ENavigationPossibilities.auth;
    } else if (routeName.startsWith('/settings')) {
      choosedPossibility = ENavigationPossibilities.settings;
    } else if (routeName.startsWith('/becamePremium')) {
      choosedPossibility = ENavigationPossibilities.becamePremium;
    } else {
      choosedPossibility = ENavigationPossibilities.DEFAULT_POSSIBILITY;
    }

    return Future.value(choosedPossibility);
    // return Future.value(_);
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
      ENavigationPossibilities.auth => '/auth',
      ENavigationPossibilities.settings => '/settings',
      ENavigationPossibilities.becamePremium => '/becamePremium',
    };

    return RouteInformation(uri: Uri(path: routeName));
  }
}
