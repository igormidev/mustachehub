import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'template_upload_state.freezed.dart';

@freezed
abstract class TemplateUploadState with _$TemplateUploadState {
  factory TemplateUploadState.normal() = _TemplateUploadStateNormal;
  factory TemplateUploadState.loading() = _TemplateUploadStateLoading;
  factory TemplateUploadState.withError({
    required String message,
  }) = _TemplateUploadStateWithError;
  factory TemplateUploadState.success({
    required UserCollectionRoot newCollectionWithUpdatedPackages,
  }) = _TemplateUploadStateSuccess;
}
