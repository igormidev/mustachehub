import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/pass_recovery_tab/pass_recovery_form_and_buttons_section.dart';

class PassRecoveryTab extends StatelessWidget {
  const PassRecoveryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackButton(),
            Text(
              'Pass recovery',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
            Text(
              'Forgot your mustache\nhub account password?',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 8),
            Text(
              'Type bellow the email you used to register your account and we will send you a recovery code.',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 16),
            const PassRecoveryForAndButtonsSection(),
          ],
        ),
      ),
    );
  }
}
