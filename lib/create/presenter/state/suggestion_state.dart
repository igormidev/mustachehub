import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:text_analyser/text_analyser.dart';

part 'suggestion_state.freezed.dart';

@freezed
abstract class SuggestionState with _$SuggestionState {
  factory SuggestionState.withIdentifiers({
    required Set<VariableImplementation> tokenIdentifiers,
    required List<AnalysedSegment> segments,
  }) = _SuggestionStateWithIdentifiers;

  factory SuggestionState.undefined() = _SuggestionStateUndefined;

  factory SuggestionState.errorOccurred() = _SuggestionStateErrorOccurred;
}
