import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/dtos/expected_payload_dto.dart';
import 'package:mustachehub/generate/presenter/mixins/mustache_text_mixin.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';

class ContentCubit extends Cubit<ContentState> with MustacheTextMixin {
  final DtoAdapter _dtoAdapter;
  ContentCubit({
    required DtoAdapter dtoAdapter,
  })  : _dtoAdapter = dtoAdapter,
        super(ContentState.withContentPendency());

  Future<void> updateContent({
    required ContentInput? output,
    required ExpectedPayload expectedPayload,
    required ExpectedPayloadDto? expectedPayloadDTO,
  }) async {
    if (output == null || output.isEmpty) {
      return emit(ContentState.withContentPendency());
    }

    try {
      if (expectedPayloadDTO == null) {
        final outputText = getOutputDto(output: output, payload: {});
        if (outputText == null) {
          return emit(ContentState.failureGeneratingText());
        }
        return emit(ContentState.withContentText(content: outputText));
      }

      // TODO(igor): Put in a isolate
      final Map<String, dynamic> payload = _dtoAdapter.getPayloadFromDtos(
        texts: expectedPayload.textPipes,
        booleans: expectedPayload.booleanPipes,
        models: expectedPayload.modelPipes,
        textDtos: expectedPayloadDTO.textDtos,
        booleanDtos: expectedPayloadDTO.booleanDtos,
        modelDtos: expectedPayloadDTO.modelDtos,
      );

      final outputText = getOutputDto(output: output, payload: payload);
      if (outputText == null) {
        return emit(ContentState.failureGeneratingText());
      }
      return emit(ContentState.withGeneratedText(content: outputText));
    } catch (error) {
      return emit(ContentState.failureGeneratingText());
    }
  }

  void setPendency(ContentInput output) {
    try {
      final castedOutput = getOutputDto(output: output, payload: {});
      if (castedOutput == null) {
        return emit(ContentState.failureGeneratingText());
      }

      if (output.isEmpty) {
        return emit(ContentState.withContentPendency());
      } else {
        return emit(ContentState.withContentText(content: castedOutput));
      }
    } catch (_) {
      return emit(ContentState.failureGeneratingText());
    }
  }
}
