import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:text_analyser/text_analyser.dart';

part 'analysed_response.freezed.dart';

/// The response of the analyser with all segments analysed and the
/// valid token identifiers in the current scope based in the text.
///
/// The [choosableVariablesInCurrentScope] are the variables that can be
/// choosen in the current scope. That is; all root variables and the variables
/// inside a model that the textfield cursor is inside that model scole.
///
/// The segment states are the status of each segments throght the hole text.
///
/// Can be a
@freezed
abstract class AnalysedResponse with _$AnalysedResponse {
  factory AnalysedResponse({
    required Set<ChoosableVariableImplementations>
        choosableVariablesInCurrentScope,
    required List<AnalysedSegmentStatus> segmentsStates,
  }) = _AnalysedResponse;
}
