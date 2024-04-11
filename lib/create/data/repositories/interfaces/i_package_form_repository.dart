import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/state/template_upload_state.dart';

abstract class IPackageFormRepository {
  Future<TemplateUploadState> createPackage({
    required PackageInfo packageInfo,
    required ExpectedPayload expectedPayload,
  });

  Future<TemplateUploadState> updatePackage({
    required Template template,
  });
}
