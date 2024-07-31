// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'selected_template_state.freezed.dart';
part 'selected_template_state.g.dart';

@freezed
abstract class SelectedTemplateState with _$SelectedTemplateState {
  @JsonSerializable(explicitToJson: true)
  factory SelectedTemplateState.withData({
    required Template template,
  }) = _SelectedTemplateStateWithData;

  factory SelectedTemplateState.unselected() = _SelectedTemplateStateUnselected;

  factory SelectedTemplateState.fromJson(Map<String, dynamic> json) =>
      _$SelectedTemplateStateFromJson(json);
}
