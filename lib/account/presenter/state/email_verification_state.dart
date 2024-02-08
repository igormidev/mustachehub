import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'email_verification_state.freezed.dart';

@freezed
abstract class EmailVerificationState with _$EmailVerificationState {
  factory EmailVerificationState.initial() = _EmailVerificationStateInitial;

  factory EmailVerificationState.withGenericError() =
      _EmailVerificationStateWithGenericError;

  factory EmailVerificationState.withNoUserError() =
      _EmailVerificationStateWithNoUserError;

  factory EmailVerificationState.alreadyValidatedEmail() =
      _EmailVerificationStateAlreadyValidatedEmail;

  factory EmailVerificationState.withCredentialError({
    required CredentialAuthException error,
  }) = _EmailVerificationStateWithError;

  factory EmailVerificationState.loading() = _EmailVerificationStateLoading;

  factory EmailVerificationState.successSendingEmailVerification() =
      _EmailVerificationStateSuccessSendingEmailVerification;
}
