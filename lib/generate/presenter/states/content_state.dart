import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';

part 'content_state.freezed.dart';

@freezed
abstract class ContentState with _$ContentState {
  factory ContentState.withContentPendency() = _ContentState;

  factory ContentState.withGeneratedText({
    required ContentOutputDto content,
  }) = _WithGeneratedText;

  factory ContentState.withContentText({
    required ContentOutputDto content,
  }) = _WithContentText;

  factory ContentState.failureGeneratingText() = _FailureGeneratingText;
}

extension ContentStateExtension on ContentState {
  ContentOutputDto? get content => map(
        failureGeneratingText: (_) => null,
        withContentPendency: (value) => null,
        withGeneratedText: (value) => value.content,
        withContentText: (value) => value.content,
      );
}
