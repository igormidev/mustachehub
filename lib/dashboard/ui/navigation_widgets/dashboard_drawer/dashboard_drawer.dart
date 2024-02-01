import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/methods/tab_selection_mixin.dart';
import 'package:mustachehub/dashboard/ui/translation/enums_translation_extensions/navigation_possibilities_extension.dart';

class DashboardDrawer extends StatelessWidget with TabSelectionMixin {
  const DashboardDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationPossibilitiesCubit,
        NavigationPossibilitiesState>(builder: (context, state) {
      final selectedPossibility = state.mapOrNull(
        loggedIn: (value) => value.selectedPossibility,
        loggedOut: (value) => value.selectedPossibility,
      );
      final possibilities = state.mapOrNull(
        loggedIn: (value) => value.possibilities,
        loggedOut: (value) => value.possibilities,
      );
      if (selectedPossibility == null || possibilities == null) {
        return SizedBox.fromSize();
      }

      final selectedIndex = possibilities.indexOf(selectedPossibility);

      return SizedBox(
        width: 225,
        child: NavigationDrawer(
          selectedIndex: selectedIndex,
          onDestinationSelected: (v) =>
              onTabSelected(v, possibilities, context),
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
    });
  }
}
