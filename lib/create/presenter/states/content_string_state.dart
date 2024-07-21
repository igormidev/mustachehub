import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachex/mustachex.dart';

part 'content_string_state.freezed.dart';
part 'content_string_state.g.dart';

@freezed
class ContentStringState with _$ContentStringState {
  const factory ContentStringState.normal({
    required String currentText,
  }) = Normal;

  const factory ContentStringState.withToken({
    required String currentText,
    required List<Token> tokensInIt,
  }) = WithToken;

  factory ContentStringState.fromJson(Map<String, Object?> json) =>
      _$ContentStringStateFromJson(json);
}
