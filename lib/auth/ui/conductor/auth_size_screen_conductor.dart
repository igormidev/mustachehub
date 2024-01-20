import 'package:flutter/material.dart';
import 'package:media_query_core/media_query_core.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
import 'package:mustachehub/auth/ui/views/auth_mobile_view/auth_mobile_view.dart';

class AuthSizeScreenConductor extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;
  const AuthSizeScreenConductor({
    super.key,
    required this.navigatorKey,
    required this.onPopPageCallback,
  });

  @override
  Widget build(BuildContext context) {
    return VisibilityWidthBased.fromParentMaxWidthConstraint(
      maximumWidth: ScreenSize.x1000,
      replacement: AuthDesktopView(
        navigatorKey: navigatorKey,
        onPopPageCallback: onPopPageCallback,
      ),
      child: AuthMobileView(
        onPopPageCallback: onPopPageCallback,
      ),
    );
  }
}
