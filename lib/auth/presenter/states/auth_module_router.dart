import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_conductor_information_parser.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_conductor_router_delegater.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_router_delegate.dart';

class AuthModuleRouter extends StatefulWidget {
  const AuthModuleRouter({super.key});

  @override
  State<AuthModuleRouter> createState() => _AuthModuleRouterState();
}

class _AuthModuleRouterState extends State<AuthModuleRouter> {
  final AuthConductorRouterDelegater routerDelegater =
      AuthConductorRouterDelegater();

  BackButtonDispatcher? _backButtonDispatcher;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final mainDelegate = (Router.of(NavigatorService.rootContext).routerDelegate
        as MustacheRouterDelegate);

    _backButtonDispatcher = Router.of(mainDelegate.navigatorKey.currentContext!)
        .backButtonDispatcher!
        .createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    _backButtonDispatcher!.takePriority();

    return Router(
      backButtonDispatcher: _backButtonDispatcher,
      routerDelegate: routerDelegater,
      routeInformationParser: AuthConductorInformationParser(),
    );
  }
}
