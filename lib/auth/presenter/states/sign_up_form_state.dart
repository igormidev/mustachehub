import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'sign_up_form_state.freezed.dart';

@freezed
abstract class SignUpFormState with _$SignUpFormState {
  factory SignUpFormState.initial() = _Initial;
  factory SignUpFormState.loadingWithCredentials() = _SignUpFormStateLoading;
  factory SignUpFormState.loadingWithFacebook() = _SignUpFormStateFacebook;
  factory SignUpFormState.loadingWithGoogle() = _SignUpFormStateGoogle;
  factory SignUpFormState.error({
    required CredentialAuthException error,
  }) = SignUpFormStateError;
  factory SignUpFormState.success() = _Success;
}
