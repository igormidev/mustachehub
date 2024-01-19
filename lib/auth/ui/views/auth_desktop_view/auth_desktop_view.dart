import 'package:flutter/material.dart';
import 'package:mustachehub/auth/presenter/router/main/auth_conductor_router_delegater.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';
import 'package:mustachehub/auth/ui/tabs/login_tab/login_form.dart';
import 'package:mustachehub/auth/ui/tabs/pass_recovery_tab/pass_recovery_tab.dart';
import 'package:mustachehub/auth/ui/tabs/signin_tab/signin_tab.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/cards/logging_advantages_cards.dart';
import 'package:mustachehub/auth/ui/widgets/onboarding_logo.dart';
import 'package:media_query_core/media_query_core.dart';

class AuthDesktopView extends StatelessWidget {
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;
  const AuthDesktopView({
    super.key,
    required this.onPopPageCallback,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SizedBox(
              width: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Advantages of logging in:',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const LoggingAdvantagesCards(),
                  const SizedBox(height: 16),
                  OnboardingLogo(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.tertiaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 500),
          child: Builder(builder: (context) {
            final AuthConductorRouterDelegater delegate = (Router.of(context)
                .routerDelegate as AuthConductorRouterDelegater);

            return Navigator(
              key: delegate.navigatorKey,
              onPopPage: onPopPageCallback,
              pages: [
                switch (delegate.currentConfiguration) {
                  EAuthPossibilities.login => MaterialPage(
                      key: ValueKey(EAuthPossibilities.login.toString()),
                      child: const LoginTab(),
                    ),
                  EAuthPossibilities.sigin => MaterialPage(
                      key: ValueKey(EAuthPossibilities.sigin.toString()),
                      child: const SigninTab(),
                    ),
                  EAuthPossibilities.passrecovery => MaterialPage(
                      key: ValueKey(EAuthPossibilities.passrecovery.toString()),
                      child: const PassRecoveryTab(),
                    ),
                  null => const MaterialPage(
                      key: ValueKey('authempty'),
                      child: SizedBox.shrink(),
                    ),
                }
              ],
            );
          }),
        ),
      ],
    );
  }
}
