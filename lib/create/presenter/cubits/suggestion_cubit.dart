import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/state/suggestion_state.dart';
import 'package:text_analyser/text_analyser.dart';

class SuggestionCubit extends Cubit<SuggestionState> {
  final TextAnalyserBase _textAnalyser;
  SuggestionCubit({
    required TextAnalyserBase textAnalyser,
  })  : _textAnalyser = textAnalyser,
        super(SuggestionState.undefined());

  void setSuggestions({
    required String input,
    required int indexAtText,
    required Map<String, TokenIdentifier> flatMap,
  }) {
    final response = _textAnalyser.getMatchClusters(
      input,
      indexAtText,
      flatMap,
    );
    if (response == null) {
      emit(SuggestionState.errorOccurred());
    } else {
      emit(SuggestionState.withIdentifiers(
          tokenIdentifiers: response.tokenIdentifiers,
          segments: response.segments));
    }
  }

  void setNormalState() {
    emit(SuggestionState.undefined());
  }
}
