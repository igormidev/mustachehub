import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/states/suggestion_state.dart';
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
    required Map<String, VariableScopeParentMapper> flatMap,
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
        tokenIdentifiers: response.choosableVariablesInCurrentScope,
        segments: response.segmentsStates,
      ));
    }
  }

  void setNormalState() {
    emit(SuggestionState.undefined());
  }
}
