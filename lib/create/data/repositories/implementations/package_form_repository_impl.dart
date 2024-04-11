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
  }) {
    final randomValue = _uuid.v4();
    final packageDoc = _firestore.doc('packages/$randomValue');
    packageDoc.set({
      'info': packageInfo.toJson(),
      'template': expectedPayload.toJson(),
    });

    return Future.value(TemplateUploadState.success());
  }

  @override
  Future<TemplateUploadState> updatePackage({
    required Template template,
  }) {
    _firestore.doc('packages/${template.id}').update({
      'packageInfo': template.info.toJson(),
      'expectedPayload': template.payload.toJson(),
    });
    return Future.value(TemplateUploadState.success());
  }
}
