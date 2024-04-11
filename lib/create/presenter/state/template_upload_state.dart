import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_upload_state.freezed.dart';

@freezed
abstract class TemplateUploadState with _$TemplateUploadState {
  factory TemplateUploadState.normal() = _TemplateUploadStateNormal;
  factory TemplateUploadState.loading() = _TemplateUploadStateLoading;
  factory TemplateUploadState.withError() = _TemplateUploadStateWithError;
  factory TemplateUploadState.success() = _TemplateUploadStateSuccess;
}
