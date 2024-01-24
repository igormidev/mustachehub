import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/pass_recovery_tab/pass_recovery_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/onboarding_logo.dart';

class PassRecoveryPage extends StatelessWidget {
  const PassRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 20),
          Center(
            child: OnboardingLogo(
              height: 400,
              width: 400,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: SizedBox(
              width: 400,
              child: FittedBox(
                child: SizedBox(
                  width: 440,
                  child: PassRecoveryForAndButtonsSection(),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}