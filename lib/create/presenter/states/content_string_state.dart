import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'content_string_state.freezed.dart';
part 'content_string_state.g.dart';

@freezed
class ContentStringState with _$ContentStringState {
  const factory ContentStringState.normal({
    required ContentInput currentText,
  }) = Normal;

  factory ContentStringState.fromJson(Map<String, Object?> json) =>
      _$ContentStringStateFromJson(json);
}

extension ContentStringStateEx on ContentStringState {
  bool validate() {
    return currentText.texts.every(
        (element) => element.content.isNotEmpty && element.title.isNotEmpty);
  }
}
