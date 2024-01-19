// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustache_firebase_references/references/package_reference.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustache_source_service/src/adapters/expected_payload_adapter.dart';
import 'package:mustache_source_service/src/adapters/package_info_adapter.dart';

class PackageService {
  final PackageReference _packageReference;
  final FirebaseFirestore _firestore;

  /// Adapters
  final ExpectedPayloadAdapter _expectedPayloadAdapter;
  final PackageInfoAdapter _packageInfoAdapter;

  const PackageService({
    required FirebaseFirestore firestore,
    required PackageReference packageReference,
    required ExpectedPayloadAdapter expectedPayloadAdapter,
    required PackageInfoAdapter packageInfoAdapter,
  })  : _expectedPayloadAdapter = expectedPayloadAdapter,
        _packageInfoAdapter = packageInfoAdapter,
        _firestore = firestore,
        _packageReference = packageReference;

  Future<ExpectedPayload> getExpectedPayload({
    required UserInfo userInfo,
    required String packageId,
  }) async {
    final expectedPayloadRef = _packageReference.expectedPayload(
        packageId: packageId, userId: userInfo.id);

    final payloadJson = (await expectedPayloadRef.get()).data();
    if (payloadJson == null) {
      throw CustomException.dataWithIdDoesNotExist(id: packageId);
    }

    try {
      return _expectedPayloadAdapter.fromMap(payloadJson);
    } catch (_) {
      throw CustomException.castObjectError();
    }
  }

  Future<PackageInfo> getExpectedPackageInfo({
    required UserInfo userInfo,
    required String packageId,
  }) async {
    final packageInfoRef = _packageReference.packageInfo(
        packageId: packageId, userId: userInfo.id);

    final packageInfoJson = (await packageInfoRef.get()).data();
    if (packageInfoJson == null) {
      throw CustomException.dataWithIdDoesNotExist(id: packageId);
    }

    try {
      return _packageInfoAdapter.fromMap(packageInfoJson);
    } catch (_) {
      throw CustomException.castObjectError();
    }
  }

  Future<Template> createTemplate({
    required UserInfo userInfo,
    required PackageInfo packageInfo,
    required ExpectedPayload expectedPayload,
  }) async {
    final newPackageRef =
        _packageReference.generateNewPackageRefId(userId: userInfo.id);
    final expectedPayloadRef = _packageReference.expectedPayload(
        packageId: newPackageRef.id, userId: userInfo.id);

    final Map<String, dynamic> packageInfoJson;
    final Map<String, dynamic> expectedPayloadJson;

    try {
      packageInfoJson = _packageInfoAdapter.toMap(packageInfo);
      expectedPayloadJson = _expectedPayloadAdapter.toMap(expectedPayload);
    } catch (_) {
      throw CustomException.castObjectError();
    }

    await _firestore.runTransaction((transaction) async {
      transaction
          .set(newPackageRef, packageInfoJson)
          .set(expectedPayloadRef, expectedPayloadJson);
    });

    return Template(
      id: newPackageRef.id,
      info: packageInfo,
      payload: expectedPayload,
    );
  }

  Future<void> updateTemplate({
    required UserInfo userInfo,
    required Template template,
  }) {
    final packageInfoRef = _packageReference.packageInfo(
        packageId: template.id, userId: userInfo.id);
    final expectedPayloadRef = _packageReference.expectedPayload(
        packageId: template.id, userId: userInfo.id);

    final Map<String, dynamic> packageInfoJson;
    final Map<String, dynamic> expectedPayloadJson;

    try {
      packageInfoJson = _packageInfoAdapter.toMap(template.info);
      expectedPayloadJson = _expectedPayloadAdapter.toMap(template.payload);
    } catch (_) {
      throw CustomException.castObjectError();
    }

    return _firestore.runTransaction((transaction) async {
      transaction
          .update(packageInfoRef, packageInfoJson)
          .update(expectedPayloadRef, expectedPayloadJson);
    });
  }
}
