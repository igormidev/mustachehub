import 'package:flutter/material.dart';
import 'package:media_query_core/media_query_core.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/auth/ui/views/auth_desktop_view/auth_desktop_view.dart';
import 'package:mustachehub/auth/ui/views/auth_mobile_view/auth_mobile_view.dart';
import 'package:mustachehub/dashboard/ui/router/mustache_router_delegate.dart';

class AuthSizeScreenConductor extends StatefulWidget {
  final bool Function(Route<dynamic> route, dynamic result) onPopPageCallback;
  const AuthSizeScreenConductor({
    super.key,
    required this.onPopPageCallback,
  });

  @override
  State<AuthSizeScreenConductor> createState() =>
      _AuthSizeScreenConductorState();
}

class _AuthSizeScreenConductorState extends State<AuthSizeScreenConductor> {
  BackButtonDispatcher? _backButtonDispatcher;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final mainDelegate = (Router.of(NavigatorService.rootContext).routerDelegate
        as MustacheRouterDelegate);

    _backButtonDispatcher = Router.of(mainDelegate.navigatorKey.currentContext!)
        .backButtonDispatcher!
        .createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    _backButtonDispatcher!.takePriority();

    return VisibilityWidthBased.fromParentMaxWidthConstraint(
      maximumWidth: ScreenSize.x1000,
      replacement: AuthDesktopView(
        onPopPageCallback: widget.onPopPageCallback,
      ),
      child: AuthMobileView(
        onPopPageCallback: widget.onPopPageCallback,
      ),
    );
  }
}
