import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'package_form_data.freezed.dart';
part 'package_form_data.g.dart';

@freezed
abstract class PackageFormData with _$PackageFormData {
  factory PackageFormData.creatingFromZero({
    required String title,
    required String description,
  }) = _PackageFormDataCreatingFromZero;

  factory PackageFormData.editingMyPackage({
    required String title,
    required String description,
    required PackageInfo previousInfoPackage,
  }) = _PackageFormDataEditingMyPackage;

  factory PackageFormData.fromJson(Map<String, dynamic> json) =>
      _$PackageFormDataFromJson(json);
}
