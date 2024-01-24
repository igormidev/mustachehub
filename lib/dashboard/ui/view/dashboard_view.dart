import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_rail/dashboard_rail.dart';

class DashboardView extends StatelessWidget {
  final Widget navigator;
  const DashboardView({
    super.key,
    required this.navigator,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const VisibilityWidthBased.fromMediaQueryScreenWidth(
          maximumWidth: ScreenSize.x1300,
          child: DashboardRail(),
        ),
        const VisibilityWidthBased.fromMediaQueryScreenWidth(
          minimumWidth: ScreenSize.x1300,
          child: DashboardDrawer(),
        ),
        Expanded(child: navigator),
      ],
    );
  }
}
