import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_log_in_repository.dart';
import 'package:mustachehub/auth/presenter/states/login_form_state.dart';

class LoginFormCubit extends Cubit<LoginFormState> {
  final ILogInRepository _loginRepository;
  LoginFormCubit({
    required ILogInRepository loginRepository,
  })  : _loginRepository = loginRepository,
        super(LoginFormState.initial());

  Future<void> logInUserWithCredentials({
    required String email,
    required String password,
  }) async {
    emit(LoginFormState.loading());
    final response = await _loginRepository.signInUserWithEmailAndPassword(
      email: email,
      password: password,
    );

    emit(response);
  }

  void defineAsInitial() {
    emit(LoginFormState.initial());
  }
}
