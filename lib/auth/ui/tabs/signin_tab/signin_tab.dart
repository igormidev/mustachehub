import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/sections/signin_form_and_buttons_section/signin_form_and_buttons_section.dart';

class SigninTab extends StatelessWidget {
  const SigninTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackButton(onPressed: () {
              Router.neglect(context, () {});
            }),
            Text(
              'Sign in',
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Theme.of(context).colorScheme.outline,
                  ),
            ),
            Text(
              'Create your mustache\nhub account',
              style: Theme.of(context).textTheme.displaySmall,
            ),
            const SizedBox(height: 25),
            const SigninFormAndButtonsSection(),
          ],
        ),
      ),
    );
  }
}
