import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/dtos/package_form_data.dart';

part 'package_form_state.freezed.dart';
part 'package_form_state.g.dart';

@freezed
abstract class PackageFormState with _$PackageFormState {
  factory PackageFormState.normal({
    required PackageFormData formData,
  }) = _PackageFormStateNormal;

  factory PackageFormState.loading() = _PackageFormStateLoading;

  factory PackageFormState.fromJson(Map<String, dynamic> json) =>
      _$PackageFormStateFromJson(json);
}

extension PackageFormStateExtension on PackageFormState {
  bool get isEditing => maybeMap(
        normal: (state) => state.formData.map(
          creatingFromZero: (_) => false,
          editingMyPackage: (_) => true,
        ),
        orElse: () => false,
      );

  bool get isCreatingFromZero => maybeMap(
        normal: (state) => state.formData.map(
          creatingFromZero: (_) => true,
          editingMyPackage: (_) => false,
        ),
        orElse: () => false,
      );

  PackageInfo? get packageInfo => mapOrNull(
        normal: (s) => s.formData.map(
          creatingFromZero: (value) {
            return PackageInfo(
              name: value.title,
              description: value.description,
            );
          },
          editingMyPackage: (value) {
            return PackageInfo(
              name: value.title,
              description: value.description,
            );
          },
        ),
      );
}
