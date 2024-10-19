import 'package:mustachehub/auth/presenter/states/login_form_state.dart';

abstract class ILogInRepository {
  Future<LoginFormState> signInUserWithEmailAndPassword({
    required String email,
    required String password,
  });
  Future<LoginFormState> signInUserWithGoogle();
}
