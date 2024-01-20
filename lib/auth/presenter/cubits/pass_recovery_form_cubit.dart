import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/auth/presenter/states/pass_recovery_form_state.dart';

class PassRecoveryFormCubit extends Cubit<PassRecoveryFormState> {
  PassRecoveryFormCubit() : super(PassRecoveryFormState.initial());

  Future<void> recoveryPasswordForEmail({
    required String email,
  }) async {}
}
