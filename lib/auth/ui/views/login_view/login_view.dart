import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/views/login_view/pages/mobile_login_page/desktop_login_page/desktop_login_page.dart';
import 'package:mustachehub/auth/ui/views/login_view/pages/mobile_login_page/mobile_login_page/mobile_login_page.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log into MustacheHub'),
      ),
      body: const VisibilityWidthBased.fromParentMaxWidthConstraint(
        maximumWidth: ScreenSize.x1000,
        replacement: DesktopLoginPage(),
        child: MobileLoginPage(),
      ),
    );
  }
}
