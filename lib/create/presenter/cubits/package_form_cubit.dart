import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_package_form_repository.dart';
import 'package:mustachehub/create/presenter/state/package_form_state.dart';

class PackageFormCubit extends HydratedCubit<PackageFormState> {
  final IPackageFormRepository _repository;

  PackageFormCubit({required IPackageFormRepository repository})
      : _repository = repository,
        super(PackageFormState.normal(name: '', description: ''));

  void setStateToNormal() {
    emit(PackageFormState.normal(name: '', description: ''));
  }

  void updateNameAndDescription({
    required String name,
    required String description,
  }) {
    emit(
      PackageFormState.normal(name: name, description: description),
    );
  }

  Future<void> createPackage({
    required Template template,
  }) async {
    final PackageInfo? packageInfo = _getPackageInfo();
    if (packageInfo == null) return;
    final response = await _repository.createPackage(
      packageInfo: packageInfo,
      template: template,
    );

    emit(response);
  }

  Future<void> updatePackage({
    required String packageId,
    required Template template,
  }) async {
    final PackageInfo? packageInfo = _getPackageInfo();
    if (packageInfo == null) return;
    final response = await _repository.updatePackage(
      packageId: packageId,
      packageInfo: packageInfo,
      template: template,
    );

    emit(response);
  }

  PackageInfo? _getPackageInfo() {
    final packageInfo = state.mapOrNull(
      normal: (s) => PackageInfo(
        name: s.name,
        description: s.description,
      ),
      error: (s) => PackageInfo(
        name: s.name,
        description: s.description,
      ),
    );

    return packageInfo;
  }

  @override
  PackageFormState? fromJson(Map<String, dynamic> json) {
    return PackageFormState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(PackageFormState state) {
    return state.toJson();
  }
}
