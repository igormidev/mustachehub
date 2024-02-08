import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_account_repository.dart';
import 'package:mustachehub/account/presenter/state/log_out_state.dart';

class LogOutCubit extends Cubit<LogOutState> {
  final IAccountRepository _accountRepository;

  LogOutCubit({
    required IAccountRepository accountRepository,
  })  : _accountRepository = accountRepository,
        super(LogOutState.initial());

  Future<void> logOut() async {
    emit(LogOutState.loading());
    await Future.delayed(const Duration(seconds: 1));
    final response = await _accountRepository.logOut();
    emit(response);
  }
}
