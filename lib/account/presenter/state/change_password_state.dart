import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'change_password_state.freezed.dart';

@freezed
abstract class ChangePasswordState with _$ChangePasswordState {
  factory ChangePasswordState.initial() = _ChangePasswordStateInitial;
  factory ChangePasswordState.loading() = _ChangePasswordStateLoading;
  factory ChangePasswordState.withNoUserError() =
      _ChangePasswordStateWithNoUserError;
  factory ChangePasswordState.withCredentialError({
    required CredentialAuthException error,
  }) = _ChangePasswordStateWithError;
  factory ChangePasswordState.withGenericError() =
      _ChangePasswordStateWithGenericError;
  factory ChangePasswordState.success() = _ChangePasswordStateSuccess;
}
