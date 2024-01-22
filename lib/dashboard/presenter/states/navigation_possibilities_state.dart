import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';
import 'package:mustachehub/dashboard/presenter/states/current_navigation_state.dart';

part 'navigation_possibilities_state.freezed.dart';

@freezed
abstract class NavigationPossibilitiesState
    with _$NavigationPossibilitiesState {
  factory NavigationPossibilitiesState.initial({
    required Uri navigationIntent,
  }) = Initial;

  factory NavigationPossibilitiesState.loggedIn({
    required CurrentNavigationState selectedPossibility,
    @Default([
      EDashboardNavigationPossibilities.collection,
      EDashboardNavigationPossibilities.generateText,
      EDashboardNavigationPossibilities.createMustache,
      EDashboardNavigationPossibilities.account,
      EDashboardNavigationPossibilities.becamePremium,
      EDashboardNavigationPossibilities.settings,
    ])
    List<EDashboardNavigationPossibilities> possibilities,
  }) = LoggedIn;

  factory NavigationPossibilitiesState.loggedOut({
    required CurrentNavigationState selectedPossibility,
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
