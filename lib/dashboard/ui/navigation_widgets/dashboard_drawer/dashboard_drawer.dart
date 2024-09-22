import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:media_query_core/nil.dart';
import 'package:media_query_core/responsiveness/extensions_screen_breakpoint.dart';
import 'package:media_query_core/responsiveness/visibility_width_based.dart';
import 'package:mustachehub/account/ui/widgets/user_display_circle_avatar.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/methods/tab_selection_mixin.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/widgets/report_bug/report_bug_card.dart';
import 'package:mustachehub/dashboard/ui/translation/enums_translation_extensions/navigation_possibilities_extension.dart';

extension BuildContextDrawer on BuildContext {
  Widget? get drawerOrNull => whenSizeIsSmallerThen(
        size: ScreenSize.x900,
        child: const DashboardDrawer(),
      );
}

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
            InkWell(
              onTap: () {
                final isUserLoggedIn = context.isUserLoggedIn;
                if (isUserLoggedIn) {
                  Scaffold.maybeOf(context)?.closeDrawer();
                  context.go('/account');
                } else {
                  context.go('/auth/login');
                }
              },
              child: const UserDisplayCircleAvatar.normalSize(
                key: ValueKey('image_not_mutable'),
                width: 160,
                height: 160,
              ),
            ),
            BlocBuilder<SessionCubit, SessionState>(
              builder: (context, state) {
                final user = state.userProfile();
                if (user == null) return nil;

                if (user.urlDisplayImage == null) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    child: OutlinedButton.icon(
                      onPressed: () {
                        context.go('/account/changeProfileImage');
                      },
                      // RoundedRectangleBorder for the button
                      style: OutlinedButton.styleFrom(
                        foregroundColor:
                            Theme.of(context).colorScheme.secondary,
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      icon: const Icon(Icons.photo),
                      label: const Text('Set profile image'),
                    ),
                  );
                } else {
                  return nil;
                }
              },
            ),
            BlocBuilder<SessionCubit, SessionState>(
              builder: (context, state) {
                final user = state.userProfile();
                if (user == null) return nil;

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                      ),
                      Text(
                        user.name,
                        style: Theme.of(context).textTheme.headlineSmall,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            ...possibilities.map((navOption) {
              return NavigationDrawerDestination(
                icon: Icon(navOption.unselectedIcon),
                selectedIcon: Icon(navOption.selectedIcon),
                label: Text(navOption.fullName()),
              );
            }),
            const SizedBox(height: 20),
            const ReportBugCard(),
            const SizedBox(height: 20),
          ],
        ),
      );
    });
  }
}
