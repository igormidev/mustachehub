import 'package:flutter/material.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_rail/dashboard_rail.dart';
import 'package:mustachehub/dashboard/ui/view/dashboard_view/wrappers/load_user_collections_wrapper.dart';

class DashboardView extends StatefulWidget {
  final Widget navigator;
  const DashboardView({
    super.key,
    required this.navigator,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const VisibilityWidthBased.fromMediaQueryScreenWidth(
            minimumWidth: ScreenSize.x900,
            maximumWidth: ScreenSize.x1300,
            child: DashboardRail(),
          ),
          const VisibilityWidthBased.fromMediaQueryScreenWidth(
            minimumWidth: ScreenSize.x1300,
            child: DashboardDrawer(),
          ),
          Expanded(child: widget.navigator),
        ],
      ),
    );
  }
}
