import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/state/package_form_state.dart';

abstract class IPackageFormRepository {
  Future<PackageFormState> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  });

  Future<PackageFormState> updatePackage({
    required String packageId,
    required PackageInfo packageInfo,
    required Template template,
  });
}
