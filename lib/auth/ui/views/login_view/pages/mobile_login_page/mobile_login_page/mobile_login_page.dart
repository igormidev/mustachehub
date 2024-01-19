import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/views/login_view/pages/mobile_login_page/sections/login_form_and_buttons_section.dart';
import 'package:mustachehub/auth/ui/widgets/onboarding_logo.dart';

class MobileLoginPage extends StatelessWidget {
  const MobileLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            OnboardingLogo(
              height: 400,
              width: 400,
            ),
            LoginFormAndButtonsSection(),
          ],
        ),
      ),
    );
  }
}
