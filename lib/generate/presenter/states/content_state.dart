import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_state.freezed.dart';

@freezed
abstract class ContentState with _$ContentState {
  factory ContentState.withContentPendency() = _ContentState;

  factory ContentState.withGeneratedText({
    required String content,
  }) = _WithGeneratedText;

  factory ContentState.withContentText({
    required String content,
  }) = _WithContentText;

  factory ContentState.failureGeneratingText() = _FailureGeneratingText;
}

extension ContentStateExtension on ContentState {
  String? get content => map(
        failureGeneratingText: (_) => null,
        withContentPendency: (value) => null,
        withGeneratedText: (value) => value.content,
        withContentText: (value) => value.content,
      );
}
