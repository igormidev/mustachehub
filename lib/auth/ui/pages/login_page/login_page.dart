import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/login_form_and_buttons_section/login_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/login_animation.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          const SizedBox(height: 20),
          Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: const LogInAnimation(
                height: 400,
                width: 400,
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: SizedBox(
              width: 400,
              child: FittedBox(
                child: SizedBox(
                  // constraints: const BoxConstraints(maxWidth: 440),
                  width: 440,
                  child: LoginFormAndButtonsSection(),
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
