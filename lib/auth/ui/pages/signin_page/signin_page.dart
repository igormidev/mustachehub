import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';
import 'package:mustachehub/auth/ui/sections/signin_form_and_buttons_section/signin_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/signin_animation.dart';
import 'package:mustachehub/auth/ui/wrappers/signin_success_redirect_wrapper.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SigninSuccessRedirectWrapper(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              context.go('/auth/login');
            },
          ),
          title: const Text('Sign in'),
        ),
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
                width: 500,
                child: SizedBoxApearDelay(
                  duration: const Duration(milliseconds: 600),
                  child: const SignInAnimation(
                    height: 400,
                    width: 500,
                  ).animate().scale(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: SizedBox(
                width: 500,
                child: FittedBox(
                  child: SizedBox(
                    width: 500,
                    child: SigninFormAndButtonsSection(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
