import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';
import 'package:mustachehub/auth/ui/sections/pass_recovery_tab/pass_recovery_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/pass_recovery_animation.dart';
import 'package:mustachehub/auth/ui/wrappers/pass_recovery_success_redirect_wrapper.dart';

class PassRecoveryPage extends StatelessWidget {
  const PassRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PassRecoverySuccessRedirectWrapper(
      child: Scaffold(
        appBar: AppBar(
          leading: BackButton(
            onPressed: () {
              context.go('/auth/login');
            },
          ),
          title: const Text('Recover your password'),
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
                width: 450,
                child: SizedBoxApearDelay(
                  duration: const Duration(milliseconds: 600),
                  child: const PassRecoveryAnimation(
                    height: 400,
                    width: 450,
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
                    child: PassRecoveryForAndButtonsSection(),
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
