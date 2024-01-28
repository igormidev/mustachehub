import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/pages/login_page/login_page.dart';
import 'package:mustachehub/auth/ui/tabs/login_tab/login_tab.dart';
import 'package:mustachehub/auth/ui/views/login_view/wrappers/login_success_redirect_wrapper.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return const LoginSuccessRedirectWrapper(
      child: VisibilityWidthBased.fromMediaQueryScreenWidth(
        minimumWidth: ScreenSize.x1300,
        replacement: LoginPage(),
        child: LoginTab(),
      ),
    );
  }
}
