import 'package:freezed_annotation/freezed_annotation.dart';

part 'fields_text_size_state.freezed.dart';
part 'fields_text_size_state.g.dart';

@freezed
abstract class FieldsTextSizeState with _$FieldsTextSizeState {
  const factory FieldsTextSizeState.normal({
    required double regexIdenfifierTextSize,
    required double testStringTextSize,
  }) = _Normal;

  factory FieldsTextSizeState.fromJson(Map<String, Object?> json) =>
      _$FieldsTextSizeStateFromJson(json);
}
