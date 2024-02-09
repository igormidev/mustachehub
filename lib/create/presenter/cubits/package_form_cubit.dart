import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/state/package_form_state.dart';

class PackageFormCubit extends Cubit<PackageFormState> {
  final IPackageFormRepository _repository;

  PackageFormCubit({required IPackageFormRepository repository})
      : _repository = repository,
        super(PackageFormState.normal());

  void setStateToNormal() {
    emit(PackageFormState.normal());
  }

  Future<void> createPackage({
    required PackageInfo packageInfo,
    required Template template,
  }) async {
    final response = await _repository.createPackage(
      packageInfo: packageInfo,
      template: template,
    );

    emit(response);
  }

  Future<void> updatePackage({
    required String packageId,
    required PackageInfo packageInfo,
    required Template template,
  }) async {
    final response = await _repository.updatePackage(
      packageId: packageId,
      packageInfo: packageInfo,
      template: template,
    );

    emit(response);
  }
}
