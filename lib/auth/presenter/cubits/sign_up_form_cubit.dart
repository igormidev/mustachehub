import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_sign_in_repository.dart';

class SignUpFormCubit extends Cubit<SignUpFormState> {
  final ISignInRepository _signInRepository;
  SignUpFormCubit({
    required ISignInRepository signInRepository,
  })  : _signInRepository = signInRepository,
        super(SignUpFormState.initial());

  Future<void> createUser({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpFormState.loading());
    await Future.delayed(const Duration(seconds: 3));
    final response = await _signInRepository.createUserWithEmailAndPassword(
      userName: name,
      email: email,
      password: password,
    );
    emit(response);
  }

  void defineAsInitial() {
    emit(SignUpFormState.initial());
  }
}
