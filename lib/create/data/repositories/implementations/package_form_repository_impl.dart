import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/state/package_form_state.dart';

class PackageFormRepositoryImpl implements IPackageFormRepository {
  // ignore: unused_field
  final FirebaseFirestore _firestore;

  PackageFormRepositoryImpl({
    FirebaseFirestore? firestore,
  }) : _firestore = firestore ?? FirebaseFirestore.instance;

  @override
  Future<PackageFormState> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  }) {
    return Future.value(PackageFormState.sucess());
  }

  @override
  Future<PackageFormState> updatePackage({
    required String packageId,
    required PackageInfo packageInfo,
    required Template template,
  }) {
    return Future.value(PackageFormState.sucess());
  }
}
