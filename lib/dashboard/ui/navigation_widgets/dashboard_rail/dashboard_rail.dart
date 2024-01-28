import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/methods/tab_selection_mixin.dart';
import 'package:mustachehub/dashboard/ui/translation/enums_translation_extensions/navigation_possibilities_extension.dart';

class DashboardRail extends StatelessWidget with TabSelectionMixin {
  const DashboardRail({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // const SizedBox(height: 16),
        // InkWell(
        //   onTap: () {
        //     // final hasUser = context.user != null;
        //     // if (hasUser) {
        //     //   context
        //     //       .get<ModulesNavigationCubit>()
        //     //       .selectNavigation(ENavigationPossibilities.account);
        //     // } else {
        //     //   context
        //     //       .get<ModulesNavigationCubit>()
        //     //       .selectNavigation(ENavigationPossibilities.login);
        //     // }
        //   },
        //   child: const UserDisplayCircleAvatar(
        //     width: 60,
        //     height: 60,
        //     size: UserImageSize.small,
        //   ),
        // ),
        const SizedBox(height: 16),
        BlocBuilder<NavigationPossibilitiesCubit, NavigationPossibilitiesState>(
            builder: (context, state) {
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

          return Expanded(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraints.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: NavigationRail(
                        selectedIndex: selectedIndex,
                        labelType: NavigationRailLabelType.selected,
                        onDestinationSelected: (v) =>
                            onTabSelected(v, possibilities, context),
                        destinations: possibilities.map(
                          (navOption) {
                            return NavigationRailDestination(
                              icon: Icon(navOption.unselectedIcon),
                              selectedIcon: Icon(navOption.selectedIcon),
                              label: Text(navOption.shortName()),
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ],
    );
  }
}
