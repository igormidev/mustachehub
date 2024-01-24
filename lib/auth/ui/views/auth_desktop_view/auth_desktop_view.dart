import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/cards/logging_advantages_cards.dart';
import 'package:mustachehub/auth/ui/widgets/onboarding_logo.dart';

class AuthDesktopView extends StatelessWidget {
  final Widget navigator;

  const AuthDesktopView({
    super.key,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VisibilityWidthBased.fromMediaQueryScreenWidth(
        minimumWidth: ScreenSize.x1300,
        replacement: navigator,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
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
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 500),
              child: navigator,
            ),
          ],
        ),
      ),
    );
  }
}
