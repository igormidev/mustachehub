import 'package:flutter/material.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/methods/tab_selection_mixin.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/ui/translation/enums_translation_extensions/navigation_possibilities_extension.dart';

class DashboardRail extends StatelessWidget with TabSelectionMixin {
  final ENavigationPossibilities selectedPossibility;
  @override
  final List<ENavigationPossibilities> possibilities;
  const DashboardRail({
    super.key,
    required this.selectedPossibility,
    required this.possibilities,
  });

  @override
  Widget build(BuildContext context) {
    int selectedIndex = possibilities.indexOf(selectedPossibility);

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
        Expanded(
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
                      onDestinationSelected: (v) => onTabSelected(v, context),
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
        ),
      ],
    );
  }
}
