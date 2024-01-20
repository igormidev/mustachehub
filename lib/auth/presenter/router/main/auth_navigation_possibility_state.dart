import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/auth/presenter/router/main/e_auth_possibilities.dart';

part 'auth_navigation_possibility_state.freezed.dart';

@freezed
abstract class AuthNavigationPossibilityState
    with _$AuthNavigationPossibilityState {
  factory AuthNavigationPossibilityState.definedVersion({
    required EAuthPossibilities selectedPossibility,
  }) = _AuthNavigationPossibilityStateInitialUndefinedVersion;
}
