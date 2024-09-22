part of 'dto_adapter.dart';

Map<String, dynamic> _getTextPayloads(
  List<TextPipe> pipes,
  List<TextPipeDto> dtos,
) {
  final Map<String, dynamic> payload = {};
  for (final textPipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == textPipe.pipeId);

    final payloadValue = dto.payloadValue;
    payload.addAll({
      textPipe.mustacheName: {
        'text': payloadValue,
        'isEmpty':
            payloadValue == null || payloadValue.replaceAll(' ', '').isEmpty,
        'isNotEmpty':
            payloadValue == null || payloadValue.replaceAll(' ', '').isEmpty,
      }
    });
  }

  return payload;
}

Map<String, dynamic> _getBoolPayloads(
  List<BooleanPipe> pipes,
  List<BooleanPipeDto> dtos,
) {
  final Map<String, dynamic> payload = {};
  for (final boolPipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == boolPipe.pipeId);
    payload.addAll({boolPipe.mustacheName: dto.payloadValue});
  }

  return payload;
}

Map<String, dynamic> _getChoicePayloads(
  List<ChoicePipe> pipes,
  List<ChoicePipeDto> dtos,
) {
  final Map<String, dynamic> payload = {};

  for (final ChoicePipe choicePipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == choicePipe.pipeId);
    payload.addAll(dto.toPayload());
  }

  return payload;
}

Map<String, dynamic> _getModelPayloads(
  List<ModelPipe> pipes,
  List<ModelPipeDto> dtos,
) {
  final Map<String, dynamic> response = {};

  for (final ModelPipe modelPipe in pipes) {
    final Iterable<ModelPipeDto> correspondingDTOs =
        dtos.where((dto) => dto.pipe.pipeId == modelPipe.pipeId);

    for (final ModelPipeDto dto in correspondingDTOs) {
      {
        final List<ModelPipeDTOPayload> payloads = dto.payloadValue;
        for (final payload in payloads) {
          response.addAll(_getTextPayloads(modelPipe.textPipes, payload.texts));
          response.addAll(
              _getBoolPayloads(modelPipe.booleanPipes, payload.booleans));
          response.addAll(
              _getChoicePayloads(modelPipe.choicePipes, payload.choices));
          response.addAll(
              _getModelPayloads(modelPipe.modelPipes, payload.subModels));
        }
      }
    }
  }

  return response;
}
