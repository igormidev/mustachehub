import 'package:flutter/material.dart';
import 'package:mustachehub/auth/ui/tabs/login_tab/login_tab.dart';
import 'package:mustachehub/auth/ui/pages/login_page/login_page.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const VisibilityWidthBased.fromMediaQueryScreenWidth(
      minimumWidth: ScreenSize.x1300,
      replacement: LoginPage(),
      child: LoginTab(),
    );
  }
}
