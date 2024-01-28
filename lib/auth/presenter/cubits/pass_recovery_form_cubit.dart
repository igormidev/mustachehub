import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

class PassRecoveryFormCubit extends Cubit<PassRecoveryFormState>
    with GlobalLoadingEnforcer<PassRecoveryFormState> {
  PassRecoveryFormCubit() : super(PassRecoveryFormState.initial());

  Future<void> recoveryPasswordForEmail({
    required String email,
  }) async {
    if (state == PassRecoveryFormState.loading()) return;
  }
}
