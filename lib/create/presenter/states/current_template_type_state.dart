import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'current_template_type_state.freezed.dart';
part 'current_template_type_state.g.dart';

@freezed
abstract class CurrentTemplateTypeState with _$CurrentTemplateTypeState {
  factory CurrentTemplateTypeState.creating() =
      _CurrentTemplateTypeStateWithNewTemplate;
  factory CurrentTemplateTypeState.withExistingTemplate({
    required Template template,
  }) = _CurrentTemplateTypeStateWithExistingTemplate;

  factory CurrentTemplateTypeState.fromJson(Map<String, dynamic> json) =>
      _$CurrentTemplateTypeStateFromJson(json);
}
