import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/auth/data/exceptions/auth_failure.dart';

part 'pass_recovery_form_state.freezed.dart';

@freezed
abstract class PassRecoveryFormState with _$PassRecoveryFormState {
  factory PassRecoveryFormState.initial() = _PassRecoveryStateInitial;
  factory PassRecoveryFormState.loading() = _PassRecoveryStateLoading;
  factory PassRecoveryFormState.error({
    required CredentialAuthException error,
  }) = _PassRecoveryStateError;
  factory PassRecoveryFormState.success() = _PassRecoveryStateData;
}
