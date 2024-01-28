import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';
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
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.tertiaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              height: 400,
              width: 400,
              child: SizedBoxApearDelay(
                duration: const Duration(milliseconds: 600),
                child: const LogInAnimation(
                  height: 400,
                  width: 400,
                ).animate().scale(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: SizedBox(
              width: 450,
              child: FittedBox(
                child: SizedBox(
                  width: 450,
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
