import 'dart:async';
import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
import 'package:mustachehub/auth/ui/views/login_view/login_view.dart';
import 'package:mustachehub/auth/ui/views/pass_recovery_view/pass_recovery_view.dart';
import 'package:mustachehub/auth/ui/views/signin_view/signin_view.dart';
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
      } else if (context.isSessionStateDetermined == false &&
          isSplashScreen == false) {
        return '/splash';
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
        parentNavigatorKey: NavigatorService.rootNavigatorKey,
        navigatorKey: NavigatorService.dashboardNavigatorKey,
        builder: (BuildContext context, GoRouterState state, Widget child) {
          return DashboardView(navigator: child);
        },
        routes: [
          GoRoute(
            path: '/collection',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.green[300],
              );
            },
          ),
          GoRoute(
            path: '/generateText',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.blueGrey,
                child: const Center(
                  child: Text(
                    'OPA',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
          GoRoute(
            path: '/createMustache',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.brown[400],
              );
            },
          ),
          GoRoute(
            path: '/account',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.purple[300],
              );
            },
          ),
          GoRoute(
            path: '/becamePremium',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.amber[300],
              );
            },
          ),
          GoRoute(
            path: '/settings',
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            builder: (context, state) {
              return Container(
                color: Colors.pink[300],
              );
            },
          ),
          ShellRoute(
            parentNavigatorKey: NavigatorService.dashboardNavigatorKey,
            navigatorKey: NavigatorService.authNovigator,
            builder: (
              BuildContext context,
              GoRouterState state,
              Widget child,
            ) {
              return AuthDesktopView(navigator: child);
            },
            routes: [
              GoRoute(
                path: '/auth/login',
                parentNavigatorKey: NavigatorService.authNovigator,
                pageBuilder: (context, state) => CustomTransitionPage<void>(
                  key: state.pageKey,
                  child: Material(
                    color: Theme.of(context).colorScheme.background,
                    child: const LoginView(),
                  ),
                  transitionsBuilder: (
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ) {
                    return SlideTransition(
                      position: Tween<Offset>(
                        begin: const Offset(-1, 0),
                        end: Offset.zero,
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              ),
              GoRoute(
                path: '/auth/signin',
                parentNavigatorKey: NavigatorService.authNovigator,
                builder: (context, state) {
                  return Material(
                    color: Theme.of(context).colorScheme.background,
                    child: const SignInView(),
                  );
                },
              ),
              GoRoute(
                path: '/auth/passrecovery',
                parentNavigatorKey: NavigatorService.authNovigator,
                builder: (context, state) {
                  return Material(
                    color: Theme.of(context).colorScheme.background,
                    child: const PassRecoveryView(),
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
