import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/states/suggestion_state.dart';
import 'package:text_analyser/text_analyser.dart';

class SuggestionCubit extends Cubit<SuggestionState> {
  final TextAnalyser _textAnalyser;
  SuggestionCubit({
    required TextAnalyser textAnalyser,
  })  : _textAnalyser = textAnalyser,
        super(SuggestionState.undefined());

  void setSuggestions({
    required String input,
    required int indexAtText,
    required Map<String, VariableScopeParentMapper> flatMap,
  }) {
    final response = _textAnalyser.getMatchClusters(
      input: input,
      indexAtText: indexAtText,
      flatMap: flatMap,
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
