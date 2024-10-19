import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/mixins/global_loader_definer.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_log_in_repository.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState>
    with GlobalLoadingEnforcer<LoginFormState> {
  final ILogInRepository _loginRepository;
  LoginFormCubit({
    required ILogInRepository loginRepository,
  })  : _loginRepository = loginRepository,
        super(LoginFormState.initial());

  Future<void> logInUserWithCredentials({
    required String email,
    required String password,
  }) async {
    emit(LoginFormState.loadingWithCredentials());
    await Future.delayed(const Duration(seconds: 1));
    final response = await _loginRepository.signInUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    emit(response);
  }

  Future<void> logInWithFacebook() async {
    emit(LoginFormState.loadingWithFacebook());
    await Future.delayed(const Duration(seconds: 3));
    emit(LoginFormState.success());
  }

  Future<void> logInWithGoogle() async {
    emit(LoginFormState.loadingWithGoogle());
    await Future.delayed(const Duration(seconds: 1));
    final response = await _loginRepository.signInUserWithGoogle();
    emit(response);
  }
}
