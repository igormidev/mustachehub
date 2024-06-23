import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/state/template_upload_state.dart';
import 'package:uuid/uuid.dart';

class PackageFormRepositoryImpl implements IPackageFormRepository {
  final FirebaseFirestore _firestore;
  final Uuid _uuid;

  PackageFormRepositoryImpl({
    FirebaseFirestore? firestore,
    Uuid? uuid,
  })  : _firestore = firestore ?? FirebaseFirestore.instance,
        _uuid = uuid ?? const Uuid();

  @override
  Future<TemplateUploadState> createPackage({
    required PackageInfo packageInfo,
    required ExpectedPayload expectedPayload,
  }) async {
    final payload = expectedPayload.toJson();
    final randomValue = _uuid.v4();
    final packageDoc = _firestore.doc('packages/$randomValue');
    await packageDoc.set({
      'info': packageInfo.toJson(),
      'template': payload,
    });

    return Future.value(TemplateUploadState.success());
  }

  @override
  Future<TemplateUploadState> updatePackage({
    required Template template,
  }) async {
    final payload = template.payload.toJson();
    await _firestore.doc('packages/${template.id}').update({
      'packageInfo': template.info.toJson(),
      'expectedPayload': payload,
    });
    return Future.value(TemplateUploadState.success());
  }
}
