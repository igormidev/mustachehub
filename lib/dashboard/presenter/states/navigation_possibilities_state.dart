import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/dashboard/data/entities/e_navigation_possibilities.dart';

part 'navigation_possibilities_state.freezed.dart';

@freezed
abstract class NavigationPossibilitiesState
    with _$NavigationPossibilitiesState {
  factory NavigationPossibilitiesState.loggedIn({
    @Default(ENavigationPossibilities.collection)
    ENavigationPossibilities selectedPossibility,
    @Default([
      ENavigationPossibilities.collection,
      ENavigationPossibilities.generateText,
      ENavigationPossibilities.createMustache,
      ENavigationPossibilities.account,
      ENavigationPossibilities.becamePremium,
      ENavigationPossibilities.settings,
    ])
    List<ENavigationPossibilities> possibilities,
  }) = LoggedIn;

  factory NavigationPossibilitiesState.loggedOut({
    @Default(ENavigationPossibilities.collection)
    ENavigationPossibilities selectedPossibility,
    @Default([
      ENavigationPossibilities.collection,
      ENavigationPossibilities.generateText,
      ENavigationPossibilities.createMustache,
      ENavigationPossibilities.login,
      ENavigationPossibilities.settings,
    ])
    List<ENavigationPossibilities> possibilities,
  }) = LoggedOut;
}
