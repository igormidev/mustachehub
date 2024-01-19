import 'package:flutter/material.dart';

import '../../pages/login_page/sections/login_form_and_buttons_section/login_form_and_buttons_section.dart';

class LoginTab extends StatelessWidget {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
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
    );
  }
}
