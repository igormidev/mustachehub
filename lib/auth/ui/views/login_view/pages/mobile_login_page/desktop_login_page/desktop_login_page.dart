import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/views/login_view/pages/mobile_login_page/sections/login_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/onboarding_logo.dart';
import 'cards/logging_advantages_cards.dart';

class DesktopLoginPage extends StatelessWidget {
  const DesktopLoginPage({super.key});

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
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    'Login',
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Theme.of(context).colorScheme.outline,
                        ),
                  ),
                  Text(
                    'Enter your mustache account',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                  const SizedBox(height: 20),
                  const LoginFormAndButtonsSection(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
