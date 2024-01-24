import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/pages/pass_recovery_page/pass_recovery_page.dart';
import 'package:mustachehub/auth/ui/tabs/pass_recovery_tab/pass_recovery_tab.dart';

class PassRecoveryView extends StatelessWidget {
  const PassRecoveryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const VisibilityWidthBased.fromMediaQueryScreenWidth(
      minimumWidth: ScreenSize.x1300,
      replacement: PassRecoveryPage(),
      child: PassRecoveryTab(),
    );
  }
}
