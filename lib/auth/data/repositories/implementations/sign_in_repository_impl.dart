import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_sign_in_repository.dart';
import 'package:mustachehub/auth/data/repositories/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:uuid/uuid.dart';

class SignInRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements ISignInRepository {
  final FirebaseAuth _fb;
  // ignore: unused_field
  final Uuid _uuid;

  SignInRepositoryImpl({
    FirebaseAuth? firebaseAuth,
    Uuid? uuid,
  })  : _fb = firebaseAuth ?? FirebaseAuth.instance,
        _uuid = uuid ?? const Uuid();

  @override
  Future<SignUpFormState> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    return manegeDefaultErrorWrapper(
      func: () async {
        final userCredential = await _fb.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        await userCredential.user?.updateDisplayName(userName);

        return SignUpFormState.success();
      },
      toState: (error) {
        return SignUpFormState.error(error: error);
      },
    );
  }
}
