import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'login_form_state.freezed.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  factory LoginFormState.initial() = _Initial;
  factory LoginFormState.loadingWithCredentials() = _LoginFormStateLoading;
  factory LoginFormState.loadingWithFacebook() = _LoginFormStateFacebook;
  factory LoginFormState.loadingWithGoogle() = _LoginFormStateGoogle;
  factory LoginFormState.error({
    required CredentialAuthException error,
  }) = LoginFormStateError;
  factory LoginFormState.success() = _Success;
}
