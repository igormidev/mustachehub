import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/data/dtos/package_form_data.dart';
import 'package:mustachehub/create/presenter/state/package_form_state.dart';

class PackageFormCubit extends HydratedCubit<PackageFormState> {
  PackageFormCubit() : super(PackageFormState.loading());

  void setStateToNormal() {
    emit(PackageFormState.loading());
  }

  void updateNameAndDescription({
    required String name,
    required String description,
  }) {
    final PackageFormData? newFormData = state.mapOrNull(normal: (state) {
      return state.formData.map(
        creatingFromZero: (value) {
          return PackageFormData.creatingFromZero(
            title: name,
            description: description,
          );
        },
        editingMyPackage: (value) {
          return PackageFormData.editingMyPackage(
            title: name,
            description: description,
            previousInfoPackage: value.previousInfoPackage,
          );
        },
      );
    });

    if (newFormData == null) return;

    emit(
      PackageFormState.normal(formData: newFormData),
    );
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
