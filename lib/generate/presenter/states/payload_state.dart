import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/generate/presenter/dtos/expected_payload_dto.dart';

part 'payload_state.freezed.dart';

@freezed
abstract class PayloadState with _$PayloadState {
  factory PayloadState.withRequiredFieldsPendency({
    required ExpectedPayloadDto expectedPayloadDto,
  }) = WithRequiredFieldsPendency;

  factory PayloadState.withValidPayload({
    required ExpectedPayloadDto expectedPayloadDto,
  }) = WithValidPayload;

  factory PayloadState.initial() = InitialPayloadState;
}

extension PayloadStateExtension on PayloadState {
  ExpectedPayloadDto? get expectedPayloadDto => map(
        initial: (_) => null,
        withRequiredFieldsPendency: (v) => v.expectedPayloadDto,
        withValidPayload: (v) => v.expectedPayloadDto,
      );
}
