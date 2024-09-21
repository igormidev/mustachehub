import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:result_dart/result_dart.dart';

import 'i_template_repository.dart';

class TemplateRepositoryImpl implements ITemplateRepository {
  final FirebaseFirestore _firestore;

  TemplateRepositoryImpl({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<Result<Template, SourceError>> getTemplate({
    required String templateId,
  }) async {
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
        return template.toSuccess();
      } catch (e, s) {
        debugPrint('Error while parsing template:\n\n$e\n\n$s');
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
