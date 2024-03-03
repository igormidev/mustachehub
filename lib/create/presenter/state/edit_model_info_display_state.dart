import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'edit_model_info_display_state.freezed.dart';

@freezed
abstract class EditModelInfoDisplayState with _$EditModelInfoDisplayState {
  factory EditModelInfoDisplayState.normal() = _EditModelInfoDisplayStateNormal;

  factory EditModelInfoDisplayState.withDisplayText({
    required ModelPipe currentModel,
    required String displayText,
    required List<String> subModelPaths,
  }) = _EditModelInfoDisplayStateWithDisplayText;
}
