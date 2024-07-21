import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/data/dtos/package_form_data.dart';
import 'package:mustachehub/create/presenter/states/package_form_state.dart';

class PackageFormCubit extends HydratedCubit<PackageFormState> {
  PackageFormCubit() : super(PackageFormState.loading());

  void setStateToLoading() {
    emit(PackageFormState.loading());
  }

  void setInitial(PackageFormData formData) {
    emit(PackageFormState.normal(formData: formData));
  }

  void set({
    required PackageFormData newFormData,
  }) {
    emit(
      PackageFormState.normal(formData: newFormData),
    );
  }

  void updateNameAndDescription({
    required String name,
    required String description,
  }) {
    final PackageFormData? newFormData = state.mapOrNull(
      normal: (state) {
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
      },
    );

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
