// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
part 'expected_payload.freezed.dart';
part 'expected_payload.g.dart';

@freezed
abstract class ExpectedPayload with _$ExpectedPayload {
  @JsonSerializable(explicitToJson: true)
  factory ExpectedPayload({
    required List<TextPipe> textPipes,
    required List<BooleanPipe> booleanPipes,
    required List<ChoicePipe> choicePipes,
    required List<ModelPipe> modelPipes,
  }) = _ExpectedPayload;

  factory ExpectedPayload.fromJson(Map<String, dynamic> json) =>
      _$ExpectedPayloadFromJson(json);
}
