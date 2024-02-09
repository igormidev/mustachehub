import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_form_state.freezed.dart';

@freezed
abstract class PackageFormState with _$PackageFormState {
  factory PackageFormState.normal() = _PackageFormStateNormal;
  factory PackageFormState.loading() = _PackageFormStateLoading;
  factory PackageFormState.failure() = _PackageFormStateFailure;
  factory PackageFormState.sucess() = _PackageFormStateSucess;
}
