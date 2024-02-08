import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_account_repository.dart';
import 'package:mustachehub/account/presenter/state/email_verification_state.dart';

class EmailVerificationCubit extends Cubit<EmailVerificationState> {
  final IAccountRepository _accountRepository;

  EmailVerificationCubit({
    required IAccountRepository accountRepository,
  })  : _accountRepository = accountRepository,
        super(EmailVerificationState.initial());

  Future<void> sendEmailVerification() async {
    emit(EmailVerificationState.loading());
    final response = await _accountRepository.sendEmailVerification();
    emit(response);
  }
}
