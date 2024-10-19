import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';
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

  @override
  Future<SignUpFormState> createUserWithGoogle() {
    return manegeDefaultErrorWrapper(
      func: () async {
        final GoogleSignIn gUser = GoogleSignIn(
            // scopes: <String>['email',]
            );
        final GoogleSignInAccount? googleUser = await gUser.signIn();
        if (googleUser == null) {
          return SignUpFormState.error(
            error: const UserDidNotFullfieldForm(),
          );
        }

        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await _firebaseAtuh.signInWithCredential(credential);
        return SignUpFormState.success();
      },
      toState: (error) {
        return SignUpFormState.error(error: error);
      },
    );
  }
}
