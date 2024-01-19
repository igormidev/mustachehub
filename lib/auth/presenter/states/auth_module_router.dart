import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_conductor_information_parser.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_conductor_router_delegater.dart';

class AuthModuleRouter extends StatelessWidget {
  final AuthConductorRouterDelegater routerDelegater =
      AuthConductorRouterDelegater();

  AuthModuleRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return Router(
      routerDelegate: routerDelegater,
      routeInformationParser: AuthConductorInformationParser(),
    );
  }
}
