import 'package:commom_states/commom_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/navigation_possibilities_state.dart';

class NavigationPossibilitiesCubit extends Cubit<NavigationPossibilitiesState> {
  NavigationPossibilitiesCubit()
      : super(NavigationPossibilitiesState.initial());

  void setNavigationPossibilitiesState(
    NavigationPossibilitiesState navigationPossibilitiesState,
  ) {
    emit(navigationPossibilitiesState);
  }

  void setDashboardEnum(
    BuildContext context,
    EDashboardNavigationPossibilities eDashboardNavigationPossibilities,
  ) {
    if (context.isUserNotLoggedIn) {
      setNavigationPossibilitiesState(
        NavigationPossibilitiesState.loggedOut(
          selectedPossibility: eDashboardNavigationPossibilities,
        ),
      );
    } else if (context.isUserLoggedIn) {
      setNavigationPossibilitiesState(
        NavigationPossibilitiesState.loggedIn(
          selectedPossibility: eDashboardNavigationPossibilities,
        ),
      );
    } else {
      return;
    }
  }
}
