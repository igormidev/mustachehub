import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_sign_in_repository.dart';
import 'package:mustachehub/auth/data/repositories/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:uuid/uuid.dart';

class SignInRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements ISignInRepository {
  final FirebaseAuth _firebaseAtuh;
  final FirebaseFirestore _firestore;

  // ignore: unused_field
  final Uuid _uuid;

  const SignInRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firebaseStorage,
    Uuid? uuid,
  })  : _firebaseAtuh = firebaseAuth,
        _firestore = firebaseStorage,
        _uuid = uuid ?? const Uuid();

  @override
  Future<SignUpFormState> createUserWithEmailAndPassword({
    required String userName,
    required String email,
    required String password,
  }) async {
    return manegeDefaultErrorWrapper(
      func: () async {
        final userCredential =
            await _firebaseAtuh.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        await userCredential.user?.updateDisplayName(userName);

        await _firestore
            .collection('/accountsInfo/')
            .doc(userCredential.user?.uid)
            .set({
          "tier": 0,
        });

        return SignUpFormState.success();
      },
      toState: (error) {
        return SignUpFormState.error(error: error);
      },
    );
  }
}
