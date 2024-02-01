import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'user_fetch_state.freezed.dart';

@freezed
abstract class UserFetchState with _$UserFetchState {
  factory UserFetchState.initial() = _UserFetchStateInitial;
  factory UserFetchState.loading() = _UserFetchStateLoading;
  factory UserFetchState.error({
    required CredentialAuthException error,
  }) = _UserFetchStateError;
  factory UserFetchState.doneWithoutUser() = _UserFetchStateDoneWithoutUser;
  factory UserFetchState.doneWithUser({
    required UserProfile userInfo,
    required AccountInfo accountInfo,
  }) = _UserFetchStateDoneWithUser;
}
