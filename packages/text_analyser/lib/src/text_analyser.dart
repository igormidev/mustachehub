import 'package:text_analyser/src/mixins/is_within_text_bounds.dart';
import 'package:text_analyser/src/mixins/text_analyser_input_variables.dart';
import 'package:text_analyser/src/models/analysed_response.dart';
import 'package:text_analyser/text_analyser.dart';

class TextAnalyser with TextAnalyserInputVariables, IsWithinTextBounds {
  AnalysedResponse? getMatchClusters({
    required String input,
    required int indexAtText,
    required Map<String, VariableScopeParentMapper> flatMap,
  }) {
    this.input = input;
    this.indexAtText = indexAtText;
    this.flatMap = flatMap;

    if (isWithinBounds() == false) {
      return null;
    }

    return null;
  }
}
