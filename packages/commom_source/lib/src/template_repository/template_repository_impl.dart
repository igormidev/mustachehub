import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:result_dart/result_dart.dart';

import 'i_template_repository.dart';

class TemplateRepositoryImpl implements ITemplateRepository {
  final FirebaseAuth _auth;
  final FirebaseFirestore _firestore;

  TemplateRepositoryImpl({
    FirebaseFirestore? firestore,
    FirebaseAuth? auth,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _auth = auth ?? FirebaseAuth.instance;

  @override
  Future<Result<Template, SourceError>> getTemplate({
    required String templateId,
  }) async {
    final userEmail = _auth.currentUser?.email;
    if (userEmail == null) {
      return SourceError.notLoggedIn().toFailure();
    }

    try {
      final response =
          await _firestore.collection('templates').doc(templateId).get();

      final responseData = response.data();

      if (!response.exists || responseData == null) {
        return SourceError.dontExistAnyData(message: 'No data found')
            .toFailure();
      }

      try {
        final template = Template.fromJson(responseData);
        if (template.metadata.usersPermission.containsKey(userEmail)) {
          return template.toSuccess();
        } else {
          return SourceError.dontHaveAccess(
                  message: 'No data found. Maybe you are trying '
                      'to access an private template. If that is '
                      'the case, please check if you have the '
                      'permission to access this data.')
              .toFailure();
        }
      } catch (_) {
        return SourceError.cast(
          message:
              'Fatal failure because the server is returning an invalid collection. '
              'This is a server error, the failure is not on your side. Try again later. '
              'If the error persists, please contact support.',
        ).toFailure();
      }
    } catch (_) {
      return SourceError.standard(
        message: 'Fatal failure while trying to parse collection from server. '
            'Try again later. If the error persists, please contact support.',
      ).toFailure();
    }
  }
}
