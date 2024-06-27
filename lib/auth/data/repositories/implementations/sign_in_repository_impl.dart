import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
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

        final newIndexesCollection = UserCollectionIndexes.root(children: []);

        final userId = userCredential.user?.uid;

        final accountInfoRef =
            _firestore.collection('/accountsInfo/').doc(userId);
        final collectionRef = _firestore.collection('collection').doc(userId);

        await _firestore.runTransaction((transaction) async {
          transaction.set(accountInfoRef, {"tier": 0}).set(
            collectionRef,
            newIndexesCollection.toJson(),
          );
        });

        return SignUpFormState.success();
      },
      toState: (error) {
        return SignUpFormState.error(error: error);
      },
    );
  }
}
