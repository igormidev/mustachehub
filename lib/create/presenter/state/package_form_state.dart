import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_form_state.freezed.dart';
part 'package_form_state.g.dart';

@freezed
abstract class PackageFormState with _$PackageFormState {
  factory PackageFormState.normal({
    required String name,
    required String description,
  }) = _PackageFormStateNormal;

  factory PackageFormState.loading() = _PackageFormStateLoading;

  factory PackageFormState.error({
    required String name,
    required String description,
  }) = _PackageFormStateSucess;

  factory PackageFormState.success() = _PackageFormStateSuccess;

  factory PackageFormState.fromJson(Map<String, dynamic> json) =>
      _$PackageFormStateFromJson(json);
}
