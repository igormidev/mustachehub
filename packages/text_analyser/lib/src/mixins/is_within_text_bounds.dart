import 'package:text_analyser/src/mixins/text_analyser_input_variables.dart';

mixin IsWithinTextBounds on TextAnalyserInputVariables {
  bool isWithinBounds() {
    final isIndexInText = indexAtText >= 0 && indexAtText <= input.length;
    if (isIndexInText == false) {
      return false;
    }

    return true;
  }
}
