import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

@immutable
abstract class CredentialAuthException {
  const CredentialAuthException();

  factory CredentialAuthException.fromFirebaseError(
    FirebaseAuthException error,
  ) {
    if (error.code.contains('account-exists-with-different-credential')) {
      return CredentialAccountExistsWithADiferent(error);
    } else if (error.code.contains('network-request-failed')) {
      return NoInternetDetected(error);
    } else if (error.code.contains('email-already-in-use')) {
      return CredentialEmailAlreadyExists(error);
    } else if (error.code.contains('invalid-email')) {
      return CredentialInvalidEmail(error);
    } else if (error.code.contains('invalid-password')) {
      return CredentialInvalidPassword(error);
    } else if (error.code.contains('invalid-display-name')) {
      return CredentialInvalidUserName(error);
    } else if (error.code.contains('user-not-found')) {
      return CredentialUserNotFound(error);
    } else if (error.code.contains('wrong-password')) {
      return CredentialWrongPassword(error);
    } else if (error.code.contains('too-many-requests')) {
      return CredentialToManyRequest(error);
    } else if (error.code.contains('weak-password')) {
      return CredentialToManyRequest(error);
    } else {
      return CredentialUnknownFailure(error.code);
    }
  }
}

@immutable
class CredentialAccountExistsWithADiferent extends CredentialAuthException {
  const CredentialAccountExistsWithADiferent(FirebaseAuthException error);
}

@immutable
class CredentialEmailAlreadyExists extends CredentialAuthException {
  const CredentialEmailAlreadyExists(FirebaseAuthException error);
}

@immutable
class NoInternetDetected extends CredentialAuthException {
  const NoInternetDetected(FirebaseAuthException error);
}

@immutable
class CredentialInvalidEmail extends CredentialAuthException {
  const CredentialInvalidEmail(FirebaseAuthException error);
}

@immutable
class CredentialInvalidPassword extends CredentialAuthException {
  const CredentialInvalidPassword(FirebaseAuthException error);
}

@immutable
class CredentialInvalidUserName extends CredentialAuthException {
  const CredentialInvalidUserName(FirebaseAuthException error);
}

@immutable
class CredentialToManyRequest extends CredentialAuthException {
  const CredentialToManyRequest(FirebaseAuthException error);
}

@immutable
class WeekPassword extends CredentialAuthException {
  const WeekPassword(FirebaseAuthException error);
}

@immutable
class CredentialUserNotFound extends CredentialAuthException {
  const CredentialUserNotFound(FirebaseAuthException error);
}

class AuthUserNotFound extends CredentialAuthException {
  const AuthUserNotFound();
}

@immutable
class CredentialWrongPassword extends CredentialAuthException {
  const CredentialWrongPassword(FirebaseAuthException error);
}

@immutable
class CredentialUnknownFailure extends CredentialAuthException {
  const CredentialUnknownFailure(String error);
}
