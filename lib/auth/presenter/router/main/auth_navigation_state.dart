import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';

class AuthNavigationState extends CurrentNavigationState {
  final EAuthPossibilities possibility;

  const AuthNavigationState._(this.possibility);

  @override
  final EDashboardNavigationPossibilities possibilityEnum =
      EDashboardNavigationPossibilities.auth;

  factory AuthNavigationState.fromUri({
    required String path,
  }) {
    if (path.contains('login')) {
      return const AuthNavigationState._(EAuthPossibilities.login);
    } else if (path.contains('signin')) {
      return const AuthNavigationState._(EAuthPossibilities.sigin);
    } else if (path.contains('passrecovery')) {
      return const AuthNavigationState._(EAuthPossibilities.passrecovery);
    } else {
      return const AuthNavigationState._(EAuthPossibilities.login);
    }
  }

  factory AuthNavigationState.defaultRoute() =>
      const AuthNavigationState._(EAuthPossibilities.login);

  @override
  Uri toUri() {
    final String choosedPossibilityName = switch (possibility) {
      EAuthPossibilities.login => 'login',
      EAuthPossibilities.sigin => 'signin',
      EAuthPossibilities.passrecovery => 'passrecovery',
    };

    return Uri(path: '/auth/$choosedPossibilityName');
  }
}
