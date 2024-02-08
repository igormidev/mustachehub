import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/data/repositories/interfaces/i_pass_recovery_repository.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

class PassRecoveryFormCubit extends Cubit<PassRecoveryFormState>
    with GlobalLoadingEnforcer<PassRecoveryFormState> {
  final IPassRecoveryRepository _passRecoveryRepository;

  PassRecoveryFormCubit({
    required IPassRecoveryRepository passRecoveryRepository,
  })  : _passRecoveryRepository = passRecoveryRepository,
        super(PassRecoveryFormState.initial());

  Future<void> recoveryPasswordForEmail({
    required String email,
  }) async {
    if (state == PassRecoveryFormState.loading()) return;
    emit(PassRecoveryFormState.loading());
    final response = await _passRecoveryRepository.sendChangePasswordEmail(
      email: email,
    );
    emit(response);
  }
}
