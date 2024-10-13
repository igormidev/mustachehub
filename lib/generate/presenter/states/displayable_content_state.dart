import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/generate/presenter/dtos/text_span_exibition_dto.dart';

part 'displayable_content_state.freezed.dart';

@freezed
abstract class DisplayableContentState with _$DisplayableContentState {
  factory DisplayableContentState.listOfTexts({
    required List<TextSpanExibitionDto> spans,
  }) = _DisplayableContentStateListOfTexts;

  factory DisplayableContentState.none() = _DisplayableContentStateNone;
}
