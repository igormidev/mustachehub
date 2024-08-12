part of 'dto_adapter.dart';

Map<String, dynamic> _getTextPayloads(
  List<TextPipe> pipes,
  List<TextPipeDto> dtos,
) {
  final Map<String, dynamic> payload = {};
  for (final textPipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == textPipe.pipeId);
    payload.addAll({textPipe.mustacheName: dto.payloadValue});
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

  for (final choicePipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == choicePipe.pipeId);

    final text = dto.payloadValue;
    payload.addAll({
      choicePipe.mustacheName: {
        'text': text,
        ...dto.pipe.options.asMap().map((_, option) {
          return MapEntry(option.toMustacheName, text == option);
        }),
      },
    });
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
