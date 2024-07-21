import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

part 'navigation_possibilities_state.freezed.dart';

@freezed
abstract class NavigationPossibilitiesState
    with _$NavigationPossibilitiesState {
  factory NavigationPossibilitiesState.initial() = Initial;

  factory NavigationPossibilitiesState.loggedIn({
    required EDashboardNavigationPossibilities selectedPossibility,
    @Default([
      EDashboardNavigationPossibilities.collection,
      EDashboardNavigationPossibilities.generateText,
      EDashboardNavigationPossibilities.createMustache,
      EDashboardNavigationPossibilities.account,
      // EDashboardNavigationPossibilities.becamePremium,
      EDashboardNavigationPossibilities.settings,
    ])
    List<EDashboardNavigationPossibilities> possibilities,
  }) = LoggedIn;

  factory NavigationPossibilitiesState.loggedOut({
    required EDashboardNavigationPossibilities selectedPossibility,
    @Default([
      EDashboardNavigationPossibilities.collection,
      EDashboardNavigationPossibilities.generateText,
      EDashboardNavigationPossibilities.createMustache,
      EDashboardNavigationPossibilities.auth,
      EDashboardNavigationPossibilities.settings,
    ])
    List<EDashboardNavigationPossibilities> possibilities,
  }) = LoggedOut;
}
