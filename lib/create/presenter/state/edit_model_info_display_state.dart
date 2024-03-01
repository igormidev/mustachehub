import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_model_info_display_state.freezed.dart';

@freezed
abstract class EditModelInfoDisplayState with _$EditModelInfoDisplayState {
  factory EditModelInfoDisplayState.normal() = _EditModelInfoDisplayStateNormal;

  factory EditModelInfoDisplayState.withDisplayText({
    required String displayText,
  }) = _EditModelInfoDisplayStateWithDisplayText;
}
