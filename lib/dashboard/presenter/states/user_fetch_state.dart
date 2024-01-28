import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/auth/data/exceptions/auth_failure.dart';

part 'user_fetch_state.freezed.dart';

@freezed
abstract class UserFetchState with _$UserFetchState {
  factory UserFetchState.initial() = _UserFetchStateInitial;
  factory UserFetchState.loading() = _UserFetchStateLoading;
  factory UserFetchState.error({
    required CredentialAuthException error,
  }) = _UserFetchStateError;
  factory UserFetchState.done() = _UserFetchStateDone;
}
