import 'package:cloud_firestore/cloud_firestore.dart';

class UserReference {
  final FirebaseFirestore _firestore;
  const UserReference({
    required FirebaseFirestore firestore,
  }) : _firestore = firestore;

  DocumentReference<Map<String, dynamic>> userReference(String userId) {
    return _firestore.collection('user_info').doc(userId);
  }
}
