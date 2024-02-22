import 'package:freezed_annotation/freezed_annotation.dart';

part 'suggestion_state.freezed.dart';

@freezed
abstract class SuggestionState with _$SuggestionState {
  factory SuggestionState() = _SuggestionState;
}
