import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/login_form_and_buttons_section/login_form_and_buttons_section.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Material(
          color: Theme.of(context).colorScheme.surface,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 46),
              Text(
                'Log in',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: Theme.of(context).colorScheme.outline,
                    ),
              ),
              Text(
                'Enter your mustache\nhub account',
                style: Theme.of(context).textTheme.displaySmall,
              ),
              const SizedBox(height: 25),
              const LoginFormAndButtonsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
