import 'dart:async';
import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubit/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/ui/pages/not_found_404_page/not_found_404_page.dart';
import 'package:mustachehub/dashboard/ui/view/dashboard_view.dart';
import 'package:mustachehub/dashboard/ui/view/splash_view.dart';

class NavigatorService {
  static final GlobalKey<NavigatorState> dashboardNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'dashboardNavigator');
  static final GlobalKey<NavigatorState> authNovigator =
      GlobalKey<NavigatorState>(debugLabel: 'authNovigator');
  static final GlobalKey<NavigatorState> rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');
}

GoRouter appRouter(SessionCubit sessionCubit) {
  return GoRouter(
    debugLogDiagnostics: true,
    navigatorKey: NavigatorService.rootNavigatorKey,
    refreshListenable: GoRouterRefreshStream(sessionCubit.stream),
    redirect: (context, state) {
      final isSplashScreen = state.matchedLocation == '/splash';

      if (isSplashScreen && context.isSessionStateDetermined) {
        final navPossibilitiesState =
            context.read<NavigationPossibilitiesCubit>().state;

        if (navPossibilitiesState is LoggedIn) {
          return '/${navPossibilitiesState.selectedPossibility.name}';
        } else if (navPossibilitiesState is LoggedOut) {
          return '/${navPossibilitiesState.selectedPossibility.name}';
        } else {
          return '/not-found';
        }
      } else if (context.isSessionStateDetermined) {
        final navPossibilitiesState =
            context.read<NavigationPossibilitiesCubit>().state;
        if (navPossibilitiesState is LoggedIn) {
          return state.matchedLocation;
        } else if (navPossibilitiesState is LoggedOut) {
          return state.matchedLocation;
        } else {
          return '/not-found';
        }
      }

      return null;
    },
    onException: (context, state, router) {
      router.replace('/not-found');
    },
    initialLocation: '/splash',
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/not-found',
        builder: (context, state) => const Scaffold(
          body: NotFound404Page(),
        ),
      ),
      ShellRoute(
        navigatorKey: NavigatorService.dashboardNavigatorKey,
        observers: [GoRouterObserver()],
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return DashboardView(navigator: child);
        },
        routes: [
          GoRoute(
            path: '/collection',
            builder: (context, state) {
              return Container(
                color: Colors.green[300],
              );
            },
          ),
          GoRoute(
            path: '/generateText',
            builder: (context, state) {
              return Container(
                color: Colors.blueGrey,
              );
            },
          ),
          GoRoute(
            path: '/createMustache',
            builder: (context, state) {
              return Container(
                color: Colors.brown[400],
              );
            },
          ),
          GoRoute(
            path: '/account',
            builder: (context, state) {
              return Container(
                color: Colors.purple[300],
              );
            },
          ),
          GoRoute(
            path: '/becamePremium',
            builder: (context, state) {
              return Container(
                color: Colors.amber[300],
              );
            },
          ),
          GoRoute(
            path: '/settings',
            builder: (context, state) {
              return Container(
                color: Colors.pink[300],
              );
            },
          ),
          StatefulShellRoute.indexedStack(branches: const []),
          ShellRoute(
            builder: (BuildContext context, GoRouterState state, Widget child) {
              return AuthDesktopView(
                navigator: child,
              );
            },
            routes: [
              GoRoute(
                path: '/auth/login',
                builder: (context, state) {
                  return Container(
                    color: Colors.white,
                  );
                },
              ),
              GoRoute(
                path: '/auth/signin',
                builder: (context, state) {
                  return Container(
                    color: Colors.lime,
                  );
                },
              ),
              GoRoute(
                path: '/passrecovery',
                builder: (context, state) {
                  return Container(
                    color: Colors.orange[300],
                  );
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class GoRouterRefreshStream<T> extends ChangeNotifier {
  /// Creates a [GoRouterRefreshStream].
  ///
  /// Every time the [stream] receives an event the [GoRouter] will refresh its
  /// current route.
  GoRouterRefreshStream(Stream<T> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
          (dynamic _) => notifyListeners(),
        );
  }

  late final StreamSubscription<T> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

class GoRouterObserver extends NavigatorObserver {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    final context = NavigatorService.dashboardNavigatorKey.currentContext;
    final dashboard =
        EDashboardNavigationPossibilities.fromString(route.settings.name!);
    context
        ?.read<NavigationPossibilitiesCubit>()
        .setDashboardEnum(context, dashboard);
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('MyTest didPop: $route');
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    print('MyTest didRemove: $route');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    print('MyTest didReplace: $newRoute');
  }
}
