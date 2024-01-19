import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/methods/tab_selection_mixin.dart';
import 'package:mustachehub/dashboard/ui/translation/enums_translation_extensions/navigation_possibilities_extension.dart';

class DashboardDrawer extends StatelessWidget with TabSelectionMixin {
  final ENavigationPossibilities selectedPossibility;
  @override
  final List<ENavigationPossibilities> possibilities;
  const DashboardDrawer({
    super.key,
    required this.selectedPossibility,
    required this.possibilities,
  });

  @override
  Widget build(BuildContext context) {
    int selectedIndex = possibilities.indexOf(selectedPossibility);

    return SizedBox(
      width: 225,
      child: NavigationDrawer(
        selectedIndex: selectedIndex,
        onDestinationSelected: (v) => onTabSelected(v, context),
        children: [
          const SizedBox(height: 20),
          // InkWell(
          //   onTap: () {
          //     final hasUser = context.user != null;
          //     if (hasUser) {
          //       Scaffold.of(context).closeDrawer();
          //       context
          //           .get<ModulesNavigationCubit>()
          //           .selectNavigation(ENavigationPossibilities.account);
          //     } else {
          //       context
          //           .get<ModulesNavigationCubit>()
          //           .selectNavigation(ENavigationPossibilities.login);
          //     }
          //   },
          //   child: const UserDisplayCircleAvatar(
          //     width: 160,
          //     height: 160,
          //   ),
          // ),
          const SizedBox(height: 20),
          ...possibilities.map((navOption) {
            return NavigationDrawerDestination(
              icon: Icon(navOption.unselectedIcon),
              selectedIcon: Icon(navOption.selectedIcon),
              label: Text(navOption.fullName()),
            );
          }).toList(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
