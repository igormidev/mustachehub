import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';

class AuthConductorInformationParser
    extends RouteInformationParser<EAuthPossibilities> {
  @override
  Future<EAuthPossibilities> parseRouteInformation(
    RouteInformation routeInformation,
  ) {
    final String routeName = routeInformation.uri.path;

    final EAuthPossibilities choosedPossibility = switch (routeName) {
      '/auth/login' => EAuthPossibilities.login,
      '/auth/signin' => EAuthPossibilities.sigin,
      '/auth/passrecovery' => EAuthPossibilities.passrecovery,
      (_) => EAuthPossibilities.DEFAULT_POSSIBILITY,
    };

    return Future.value(choosedPossibility);
  }

  @override
  RouteInformation restoreRouteInformation(
    EAuthPossibilities configuration,
  ) {
    final String routeName = switch (configuration) {
      EAuthPossibilities.login => '/auth/login',
      EAuthPossibilities.sigin => '/auth/signin',
      EAuthPossibilities.passrecovery => '/auth/passrecovery',
    };

    return RouteInformation(uri: Uri(path: routeName));
  }
}
