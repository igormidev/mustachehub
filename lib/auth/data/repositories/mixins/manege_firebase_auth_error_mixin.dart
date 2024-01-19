import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustachehub/auth/data/exceptions/auth_failure.dart';

mixin ManegeFirebaseAuthErrorMixin {
  Future<T> manegeDefaultErrorWrapper<T>({
    required Future<T> Function() func,
    required T Function(CredentialAuthException error) toState,
  }) async {
    try {
      return await func();

      // If we have a firebase auth erro, lets cast it to owr custom error.
    } on FirebaseAuthException catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      final credentialError = CredentialAuthException.fromFirebaseError(error);

      return toState(credentialError);

      // Generic error...
    } catch (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      return toState(
        const CredentialUnknownFailure('unknown-failure'),
      );
    }
  }
}
