import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/data/adapters/dto_adapter.dart';
import 'package:mustachehub/generate/presenter/dtos/expected_payload_dto.dart';
import 'package:mustachehub/generate/presenter/states/content_state.dart';

class ContentCubit extends Cubit<ContentState> with MustacheTextMixin {
  final DtoAdapter _dtoAdapter;
  ContentCubit({
    required DtoAdapter dtoAdapter,
  })  : _dtoAdapter = dtoAdapter,
        super(ContentState.withContentPendency());

  Future<void> updateContent({
    required String? content,
    required ExpectedPayload expectedPayload,
    required ExpectedPayloadDto? expectedPayloadDTO,
  }) async {
    if (content == null || content.trim().isEmpty) {
      return emit(ContentState.withContentPendency());
    }

    try {
      if (expectedPayloadDTO == null) {
        final output = getMustacheText(content, {});
        if (output == null) {
          return emit(ContentState.failureGeneratingText());
        }
        return emit(ContentState.withContentText(content: output));
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

      final output = getMustacheText(content, payload);
      if (output == null) {
        return emit(ContentState.failureGeneratingText());
      }
      return emit(ContentState.withGeneratedText(content: output));
    } catch (error) {
      return emit(ContentState.failureGeneratingText());
    }
  }

  void setPendency(String content) {
    try {
      final output = getMustacheText(content, {});
      if (output == null) {
        return emit(ContentState.failureGeneratingText());
      }

      if (content.trim().isEmpty) {
        return emit(ContentState.withContentPendency());
      } else {
        return emit(ContentState.withContentText(content: output));
      }
    } catch (_) {
      return emit(ContentState.failureGeneratingText());
    }
  }
}
