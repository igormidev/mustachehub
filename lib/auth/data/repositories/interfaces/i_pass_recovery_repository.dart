import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

abstract class IPassRecoveryRepository {
  Future<PassRecoveryFormState> sendChangePasswordEmail({
    required String email,
  });
}
