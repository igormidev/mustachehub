import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/mixins/global_loader_definer.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/state/template_upload_state.dart';

class TemplateUploadCubit extends Cubit<TemplateUploadState>
    with GlobalLoadingEnforcer {
  final IPackageFormRepository _repository;

  TemplateUploadCubit({required IPackageFormRepository repository})
      : _repository = repository,
        super(TemplateUploadState.normal());

  Future<void> updatePackage({
    required Template template,
  }) async {
    emit(TemplateUploadState.loading());
    final response = await _repository.updatePackage(
      template: template,
    );

    emit(response);
  }

  Future<void> createPackage({
    required PackageInfo packageInfo,
    required ExpectedPayload expectedPayload,
  }) async {
    emit(TemplateUploadState.loading());
    final response = await _repository.createPackage(
      packageInfo: packageInfo,
      expectedPayload: expectedPayload,
    );

    emit(response);
  }
}
