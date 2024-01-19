import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';

part 'auth_navigation_possibility_state.freezed.dart';

@freezed
abstract class AuthNavigationPossibilityState
    with _$AuthNavigationPossibilityState {
  factory AuthNavigationPossibilityState.initial() =
      _AuthNavigationPossibilityStateInitial;

  factory AuthNavigationPossibilityState.undefinedVersion({
    required EAuthPossibilities selectedPossibility,
  }) = _AuthNavigationPossibilityStateInitialUndefinedVersion;

  factory AuthNavigationPossibilityState.mobileVersion({
    required EAuthPossibilities selectedPossibility,
  }) = _AuthNavigationPossibilityStateMobileVersion;

  factory AuthNavigationPossibilityState.desktopVersion({
    required EAuthPossibilities selectedPossibility,
  }) = _AuthNavigationPossibilityStateDesktopVersion;
}

extension AuthNavigationPossibilityStateExtension
    on AuthNavigationPossibilityState {
  EAuthPossibilities? get selectedPossibility => map(
        initial: (_) => null,
        undefinedVersion: (state) => state.selectedPossibility,
        mobileVersion: (state) => state.selectedPossibility,
        desktopVersion: (state) => state.selectedPossibility,
      );
}
