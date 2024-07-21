import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'template_fetch_state.freezed.dart';

@freezed
abstract class TemplateFetchState with _$TemplateFetchState {
  factory TemplateFetchState.initial() = _TemplateFetchStateInitial;
  factory TemplateFetchState.withError({
    required String error,
  }) = _TemplateFetchStateError;
  factory TemplateFetchState.loading() = _TemplateFetchStateLoading;
  factory TemplateFetchState.successFetch({
    required Template template,
  }) = _TemplateFetchStateSuccessFetch;
}
