import 'package:commom_states/commom_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';

mixin TabSelectionMixin {
  void onTabSelected(
      int index,
      List<EDashboardNavigationPossibilities> possibilities,
      BuildContext context) {
    if (context.isSessionStateDetermined == false) return;

    final EDashboardNavigationPossibilities choosedPossibility =
        possibilities[index];

    final dashboardCubit = context.read<NavigationPossibilitiesCubit>();
    dashboardCubit.setDashboardEnum(context, choosedPossibility);

    switch (choosedPossibility) {
      case EDashboardNavigationPossibilities.collection:
        context.go('/collection');
        break;
      case EDashboardNavigationPossibilities.generateText:
        context.go('/generateText');
        break;
      case EDashboardNavigationPossibilities.createMustache:
        context.go('/createMustache');
        break;
      case EDashboardNavigationPossibilities.account:
        context.go('/account');
        break;
      case EDashboardNavigationPossibilities.auth:
        context.go('/auth/login');
        break;
      case EDashboardNavigationPossibilities.settings:
        context.go('/settings');
        break;
      case EDashboardNavigationPossibilities.becamePremium:
        context.go('/becamePremium');
        break;
    }
  }
}
