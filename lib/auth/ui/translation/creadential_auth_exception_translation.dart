import 'package:mustachehub/auth/data/exceptions/auth_failure.dart';

class CreadentialAuthExceptionTranslation {
  static String getTitle(CredentialAuthException exception) {
    return switch (exception) {
      CredentialAccountExistsWithADiferent() =>
        'This account already exists with a different credential',
      CredentialEmailAlreadyExists() => 'Email already used',
      NoInternetDetected() => 'No connection with internet',
      CredentialInvalidEmail() => 'Invalid email',
      CredentialInvalidPassword() => 'Invalid password',
      CredentialInvalidUserName() => 'Invalid User Name',
      CredentialToManyRequest() => 'You eceded the number of attempts',
      WeekPassword() => 'Your password is too weak',
      CredentialUserNotFound() => 'No user found with those credentials',
      AuthUserNotFound() => 'User not found',
      CredentialWrongPassword() => 'Wrong password',
      CredentialUnknownFailure() => 'An unknown error has occurred',
    };
  }

  static String getDescription(CredentialAuthException exception) {
    return switch (exception) {
      CredentialAccountExistsWithADiferent() =>
        'You have already created a account with this '
            'email credential in a diferent sing up method. For example: '
            'You created a mustache account, and now are trying to create '
            'a another account with a different form of login, for example, '
            'with Facebook.',
      CredentialEmailAlreadyExists() =>
        'You provided email is already in use by an existing '
            'user. Each user must have a unique email.',
      NoInternetDetected() =>
        'The application failed to connect to the server. Check your network signal and try again.',
      CredentialInvalidEmail() =>
        'You can not use this email. Try another one.',
      CredentialInvalidPassword() =>
        'You can not use this password. Try another one.',
      CredentialInvalidUserName() =>
        'You can not use this User Name. Try another one.',
      CredentialToManyRequest() => 'You got the password wrong multiple times. '
          'For security, we block login attempts on this '
          'device for a while. Try again later...',
      WeekPassword() => 'Please type a more strong password.',
      CredentialUserNotFound() => 'No user found with those credentials. '
          'Check that you typed your email and password correctly. '
          "Don't have an account? Create one right now!",
      AuthUserNotFound() => 'Your account has been disabled. '
          'Contact support to recover your account.',
      CredentialWrongPassword() =>
        'Check that you typed your password correctly. '
            "Don't remember the password? Click on forgot "
            'my password to recover it.',
      CredentialUnknownFailure() => 'Try again. You can also try closing the '
          'application. If the error persists, contact support.',
    };
  }
}
