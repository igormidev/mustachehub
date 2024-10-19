import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_log_in_repository.dart';
import 'package:mustachehub/auth/data/repositories/mixins/manege_firebase_auth_error_mixin.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';

class LogInRepositoryImpl
    with ManegeFirebaseAuthErrorMixin
    implements ILogInRepository {
  final FirebaseAuth _fb;

  const LogInRepositoryImpl({
    required FirebaseAuth firebaseAuth,
  }) : _fb = firebaseAuth;

  @override
  Future<LoginFormState> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  }) {
    return manegeDefaultErrorWrapper(
      func: () async {
        await _fb.signInWithEmailAndPassword(
          email: email,
          password: password,
        );

        return LoginFormState.success();
      },
      toState: (error) {
        return LoginFormState.error(error: error);
      },
    );
  }

  @override
  Future<LoginFormState> signInUserWithGoogle() {
    return manegeDefaultErrorWrapper(
      func: () async {
        final GoogleSignIn gUser = GoogleSignIn(
            // scopes: <String>['email',]
            );
        final GoogleSignInAccount? googleUser = await gUser.signIn();
        if (googleUser == null) {
          return LoginFormState.error(
            error: const UserDidNotFullfieldForm(),
          );
        }

        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;

        final OAuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        await _fb.signInWithCredential(credential);
        return LoginFormState.success();
      },
      toState: (error) {
        return LoginFormState.error(error: error);
      },
    );
  }
}
