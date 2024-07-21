import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'editable_template_fetch_state.freezed.dart';

@freezed
abstract class EditableTemplateFetchState with _$EditableTemplateFetchState {
  factory EditableTemplateFetchState.initial() =
      _EditableTemplateFetchStateInitial;
  factory EditableTemplateFetchState.withError({
    required String error,
  }) = _EditableTemplateFetchStateError;
  factory EditableTemplateFetchState.loading() =
      _EditableTemplateFetchStateLoading;
  factory EditableTemplateFetchState.successFetch({
    required Template template,
  }) = _EditableTemplateFetchStateSuccessFetch;
}
