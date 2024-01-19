import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/auth/data/exceptions/auth_failure.dart';

part 'login_form_state.freezed.dart';

@freezed
abstract class LoginFormState with _$LoginFormState {
  factory LoginFormState.initial() = _Initial;
  factory LoginFormState.loading() = LoginFormStateLoading;
  factory LoginFormState.error({
    required CredentialAuthException error,
  }) = LoginFormStateError;
  factory LoginFormState.success() = _Success;
}
