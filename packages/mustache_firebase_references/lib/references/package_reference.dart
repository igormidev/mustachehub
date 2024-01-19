import 'package:cloud_firestore/cloud_firestore.dart';

class PackageReference {
  final FirebaseFirestore _firestore;
  const PackageReference({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  DocumentReference<Map<String, dynamic>> expectedPayload({
    required String packageId,
    required String userId,
  }) {
    return _firestore.collection('expected_payloads/$userId').doc(packageId);
  }

  DocumentReference<Map<String, dynamic>> packageInfo({
    required String packageId,
    required String userId,
  }) {
    return _firestore.collection('packages_info/$userId').doc(packageId);
  }

  DocumentReference<Map<String, dynamic>> generateNewPackageRefId({
    required String userId,
  }) {
    return _firestore.collection('packages_info/$userId').doc();
  }
}
