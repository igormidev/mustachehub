import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/dashboard/data/repositories/interfaces/i_user_fetch_repository.dart';
import 'package:mustachehub/dashboard/presenter/states/user_fetch_state.dart';

class UserFetchRepositoryImpl implements IUserFetchRepository {
  final FirebaseAuth _firebaseUser;
  final FirebaseFirestore _firestore;

  UserFetchRepositoryImpl({
    required FirebaseAuth firebaseAuth,
    required FirebaseFirestore firebaseStorage,
  })  : _firebaseUser = firebaseAuth,
        _firestore = firebaseStorage;

  @override
  Future<UserFetchState> getPersistenceUser() async {
    final user = _firebaseUser.currentUser;

    if (user == null) {
      return Future.value(UserFetchState.doneWithoutUser());
    }

    final accountInfoJson =
        (await _firestore.collection('/accountsInfo/').doc(user.uid).get())
            .data();

    if (accountInfoJson == null) {
      return Future.value(UserFetchState.doneWithoutUser());
    }

    return Future.value(UserFetchState.doneWithUser(
      userInfo: UserProfile(
        id: user.uid,
        name: user.displayName ?? '---',
        email: user.email ?? '---',
        urlDisplayImage: user.photoURL,
      ),
      accountInfo: AccountInfo(
        tier: AccountTier.values[accountInfoJson['tier'] as int],
      ),
    ));
  }
}
