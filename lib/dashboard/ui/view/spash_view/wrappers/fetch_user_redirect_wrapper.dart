import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/app_core/app_routes.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/cubits/navigation_possibilities_cubit.dart';
import 'package:mustachehub/dashboard/presenter/cubits/user_fetch_cubit.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';
import 'package:mustachehub/dashboard/presenter/states/user_fetch_state.dart';

class FetchUserRedirectWrapper extends StatelessWidget {
  final String? redirectToLink;
  final Widget child;
  const FetchUserRedirectWrapper({
    super.key,
    required this.child,
    required this.redirectToLink,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserFetchCubit, UserFetchState>(
      listener: (context, state) {
        final d = redirectToLink;
        final cleanLink =
            d == null ? null : (d.contains('#') == true ? d.split('#')[1] : d);
        state.mapOrNull(
          doneWithoutUser: (_) async {
            try {
              await FirebaseAnalytics.instance.logAppOpen();
            } catch (_) {}
            if (!context.mounted) return;
            final sessionCubit = context.read<SessionCubit>();
            final dashboardCubit = context.read<NavigationPossibilitiesCubit>();

            dashboardCubit.setNavigationPossibilitiesState(
              NavigationPossibilitiesState.loggedOut(
                selectedPossibility:
                    EDashboardNavigationPossibilities.collection,
              ),
            );
            sessionCubit.setSessionState(SessionState.guest());

            if (cleanLink != null && cleanLink.isNotEmpty) {
              redirectTo = null;
              context.go(cleanLink);
              return;
            }

            context.go(
              '/${EDashboardNavigationPossibilities.DEFAULT_POSSIBILITY.name}',
            );
          },
          doneWithUser: (value) {
            FirebaseAnalytics.instance.logAppOpen();
            final sessionCubit = context.read<SessionCubit>();
            final dashboardCubit = context.read<NavigationPossibilitiesCubit>();

            dashboardCubit.setNavigationPossibilitiesState(
              NavigationPossibilitiesState.loggedIn(
                selectedPossibility:
                    EDashboardNavigationPossibilities.collection,
              ),
            );
            sessionCubit.setSessionState(SessionState.loggedIn(
              account: value.accountInfo,
              user: value.userInfo,
            ));

            if (cleanLink != null && cleanLink.isNotEmpty) {
              redirectTo = null;
              context.go(cleanLink);
              return;
            }

            context.go(
              '/${EDashboardNavigationPossibilities.DEFAULT_POSSIBILITY.name}',
            );
          },
          error: (value) {
            context.go('/not-found');
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                ErrorSnackBar(context: context, text: 'Error fetching user'),
              );
          },
        );
      },
      child: child,
    );
  }
}
