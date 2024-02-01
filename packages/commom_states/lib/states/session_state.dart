import 'package:commom_states/cubits/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'session_state.freezed.dart';

@freezed
abstract class SessionState with _$SessionState {
  /// Not determined yet.
  factory SessionState.notDeterminedYet() = _NotDeterminedYet;
  factory SessionState.guest() = _Guest;
  factory SessionState.loggedIn({
    required AccountInfo account,
    required UserProfile user,
  }) = _LoggedIn;
}

extension SessionStateBuildContextExtension on BuildContext {
  bool isUserStarterOrHigher() =>
      isStarterUser() || isUnlimitedUser() || isProUser();
  bool isUserUnlimitedOrHigher() => isUnlimitedUser() || isProUser();

  bool isFreeUser() => isUserLoggedInAs(AccountTier.free) || isUserNotLoggedIn;
  bool isStarterUser() => isUserLoggedInAs(AccountTier.starter);
  bool isUnlimitedUser() => isUserLoggedInAs(AccountTier.unlimited);
  bool isProUser() => isUserLoggedInAs(AccountTier.pro);

  bool isUserLoggedInAs(AccountTier tier) =>
      read<SessionCubit>().state.maybeMap(
            loggedIn: (state) => state.account.tier == tier,
            orElse: () => false,
          );

  bool get isSessionStateDetermined => read<SessionCubit>().state.maybeMap(
        notDeterminedYet: (_) => false,
        orElse: () => true,
      );

  bool get isUserNotLoggedIn => isUserLoggedIn == false;
  bool get isUserLoggedIn => read<SessionCubit>().state.maybeMap(
        loggedIn: (_) => true,
        orElse: () => false,
      );
}

extension SessionStateExtension on SessionState {
  bool get isUserStarterOrHigher =>
      isStarterUser || isUnlimitedUser || isProUser;
  bool get isUserUnlimitedOrHigher => isUnlimitedUser || isProUser;

  bool get isFreeUser =>
      isUserLoggedInAs(AccountTier.free) || isUserNotLoggedIn;
  bool get isStarterUser => isUserLoggedInAs(AccountTier.starter);
  bool get isUnlimitedUser => isUserLoggedInAs(AccountTier.unlimited);
  bool get isProUser => isUserLoggedInAs(AccountTier.pro);

  bool isUserLoggedInAs(AccountTier tier) => maybeMap(
        loggedIn: (state) => state.account.tier == tier,
        orElse: () => false,
      );

  bool get isUserNotLoggedIn => isUserLoggedIn == false;
  bool get isUserLoggedIn => maybeMap(
        loggedIn: (_) => true,
        orElse: () => false,
      );
}
