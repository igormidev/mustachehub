import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/signin_form_and_buttons_section/signin_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/signin_animation.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
              child: const SignInAnimation(
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
                  width: 440,
                  child: SigninFormAndButtonsSection(),
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
