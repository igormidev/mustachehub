import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_account_repository.dart';
import 'package:mustachehub/account/presenter/state/change_password_state.dart';
import 'package:mustachehub/account/presenter/state/email_verification_state.dart';
import 'package:mustachehub/account/presenter/state/log_out_state.dart';
import 'package:mustachehub/app_core/exceptions/auth_failure.dart';

class AccountRepositoryImpl implements IAccountRepository {
  final FirebaseAuth _auth;
  AccountRepositoryImpl({
    required FirebaseAuth auth,
  }) : _auth = auth;

  @override
  Future<EmailVerificationState> sendEmailVerification() async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) return EmailVerificationState.withNoUserError();

      if (currentUser.emailVerified) {
        return EmailVerificationState.alreadyValidatedEmail();
      }

      await currentUser.sendEmailVerification();
      return EmailVerificationState.successSendingEmailVerification();
    } on FirebaseAuthException catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      final credentialError = CredentialAuthException.fromFirebaseError(error);

      return EmailVerificationState.withCredentialError(error: credentialError);

      // Generic error...
    } catch (e) {
      return EmailVerificationState.withGenericError();
    }
  }

  @override
  Future<LogOutState> logOut() async {
    try {
      await _auth.signOut();
      return LogOutState.successLogOut();
    } on FirebaseAuthException catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      final credentialError = CredentialAuthException.fromFirebaseError(error);

      return LogOutState.withCredentialError(error: credentialError);

      // Generic error...
    } catch (e) {
      return LogOutState.withGenericError();
    }
  }

  @override
  Future<ChangePasswordState> changePassword({
    required String email,
    required String currentPassword,
    required String newPassword,
  }) async {
    try {
      final currentUser = _auth.currentUser;
      if (currentUser == null) return ChangePasswordState.withNoUserError();

      final credential = EmailAuthProvider.credential(
        email: email,
        password: currentPassword,
      );
      await currentUser.reauthenticateWithCredential(credential);

      await _auth.currentUser?.updatePassword(newPassword);

      return ChangePasswordState.success();
    } on FirebaseAuthException catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      final credentialError = CredentialAuthException.fromFirebaseError(error);

      return ChangePasswordState.withCredentialError(error: credentialError);

      // Generic error...
    } catch (e) {
      return ChangePasswordState.withGenericError();
    }
  }
}
