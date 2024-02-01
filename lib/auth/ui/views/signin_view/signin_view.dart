import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/pages/signin_page/signin_page.dart';
import 'package:mustachehub/auth/ui/tabs/signin_tab/signin_tab.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return const VisibilityWidthBased.fromMediaQueryScreenWidth(
      minimumWidth: ScreenSize.x1300,
      replacement: SignInPage(),
      child: SigninTab(),
    );
  }
}
