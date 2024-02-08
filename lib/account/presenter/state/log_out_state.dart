import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

part 'log_out_state.freezed.dart';

@freezed
abstract class LogOutState with _$LogOutState {
  factory LogOutState.initial() = _LogOutInitialState;
  factory LogOutState.loading() = _LogOutLoadingState;
  factory LogOutState.withGenericError() = _LogOutStateWithGenericError;
  factory LogOutState.withCredentialError({
    required CredentialAuthException error,
  }) = _LogOutStateStateWithError;
  factory LogOutState.withNoUserError() = _LogOutStateWithNoUserError;
  factory LogOutState.successLogOut() = _LogOutSuccessState;
}
