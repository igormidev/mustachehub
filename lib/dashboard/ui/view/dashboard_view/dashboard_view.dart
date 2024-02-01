import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_rail/dashboard_rail.dart';

part 'dashboard_view_methods.dart';

class DashboardView extends StatefulWidget {
  final Widget navigator;
  const DashboardView({
    super.key,
    required this.navigator,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView>
    with DashboardViewMethods {
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
        Expanded(child: widget.navigator),
      ],
    );
  }
}
