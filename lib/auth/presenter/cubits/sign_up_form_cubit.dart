import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/mixins/global_loader_definer.dart';
import 'package:mustachehub/auth/presenter/states/sign_up_form_state.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_sign_in_repository.dart';

class SignUpFormCubit extends Cubit<SignUpFormState>
    with GlobalLoadingEnforcer<SignUpFormState> {
  final ISignInRepository _signInRepository;
  SignUpFormCubit({
    required ISignInRepository signInRepository,
  })  : _signInRepository = signInRepository,
        super(SignUpFormState.initial());

  Future<void> createUserWithCredential({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpFormState.loadingWithCredentials());
    final response = await _signInRepository.createUserWithEmailAndPassword(
      userName: name,
      email: email,
      password: password,
    );
    emit(response);
  }

  Future<void> createUserWithFacebook() async {
    emit(SignUpFormState.loadingWithFacebook());
    await Future.delayed(const Duration(seconds: 3));
    emit(SignUpFormState.success());
  }

  Future<void> createUserWithGoogle() async {
    emit(SignUpFormState.loadingWithGoogle());
    final response = await _signInRepository.createUserWithGoogle();
    emit(response);
  }
}
