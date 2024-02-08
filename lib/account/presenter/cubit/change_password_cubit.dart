import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_account_repository.dart';
import 'package:mustachehub/account/presenter/state/change_password_state.dart';

class ChangePasswordCubit extends Cubit<ChangePasswordState> {
  final IAccountRepository _accountRepository;

  ChangePasswordCubit({
    required IAccountRepository accountRepository,
  })  : _accountRepository = accountRepository,
        super(ChangePasswordState.initial());

  Future<void> changePassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    emit(ChangePasswordState.loading());
    final response = await _accountRepository.changePassword(
      email: email,
      currentPassword: currentPassword,
      newPassword: newPassword,
    );
    emit(response);
  }
}
