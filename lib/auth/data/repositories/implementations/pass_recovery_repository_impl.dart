import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_pass_recovery_repository.dart';
import 'package:mustachehub/auth/data/repositories/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

class PassRecoveryRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements IPassRecoveryRepository {
  final FirebaseAuth _firebaseAuth;

  const PassRecoveryRepositoryImpl({
    required FirebaseAuth firebaseAuth,
  }) : _firebaseAuth = firebaseAuth;

  @override
  Future<PassRecoveryFormState> sendChangePasswordEmail({
    required String email,
  }) {
    return manegeDefaultErrorWrapper(
      func: () async {
        await _firebaseAuth.sendPasswordResetEmail(email: email);

        return PassRecoveryFormState.success();
      },
      toState: (error) {
        return PassRecoveryFormState.error(error: error);
      },
    );
  }
}
