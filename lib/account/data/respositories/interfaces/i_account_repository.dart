import 'package:mustachehub/account/presenter/state/change_password_state.dart';
import 'package:mustachehub/account/presenter/state/email_verification_state.dart';
import 'package:mustachehub/account/presenter/state/log_out_state.dart';

abstract class IAccountRepository {
  Future<EmailVerificationState> sendEmailVerification();
  Future<LogOutState> logOut();
  Future<ChangePasswordState> changePassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  });
}
