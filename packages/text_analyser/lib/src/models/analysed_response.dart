import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:text_analyser/text_analyser.dart';

part 'analysed_response.freezed.dart';

@freezed
abstract class AnalysedResponse with _$AnalysedResponse {
  factory AnalysedResponse({
    required Set<VariableImplementation> tokenIdentifiers,
    required List<AnalysedSegment> segments,
  }) = _AnalysedResponse;
}
