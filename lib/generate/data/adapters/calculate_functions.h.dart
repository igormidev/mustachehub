part of 'dto_adapter.dart';

List<ModelPipeDto> _calculateModelsPipe(
  List<ModelPipe> pipes,
  List<ModelPipeDto>? oldModelDtos,
) {
  final List<ModelPipeDto> modelResponse = [];

  for (final ModelPipe pipe in pipes) {
    final cacheValue = oldModelDtos?.singleWhereOrNull(
      (dto) => dto.pipe.pipeId == pipe.pipeId,
    );

    final ModelPipeDto pipeDto = ModelPipeDto(
      pipe: pipe,
      uuid: cacheValue?.uuid ?? const Uuid().v4(),
      payloadValue: cacheValue?.payloadValue ?? [],
    );

    modelResponse.add(pipeDto);
  }

  return modelResponse;
}

List<TextPipeDto> _calculateTextsPipe(
  List<TextPipe> pipes,
  List<TextPipeDto>? oldDtos,
) {
  final List<TextPipeDto> response = [];

  for (final pipe in pipes) {
    final cacheValue = oldDtos?.singleWhereOrNull(
      (dto) => dto.pipe.pipeId == pipe.pipeId,
    );
    final pipeDto = TextPipeDto(
      pipe: pipe,
      payloadValue: cacheValue?.payloadValue,
      uuid: cacheValue?.uuid ?? const Uuid().v4(),
    );
    response.add(pipeDto);
  }

  return response;
}

List<BooleanPipeDto> _calculateBooleansPipe(
  List<BooleanPipe> pipes,
  List<BooleanPipeDto>? oldDtos,
) {
  final List<BooleanPipeDto> response = [];

  for (final pipe in pipes) {
    final cacheValue = oldDtos?.singleWhereOrNull(
      (dto) => dto.pipe.pipeId == pipe.pipeId,
    );
    final pipeDto = BooleanPipeDto(
      uuid: cacheValue?.uuid ?? const Uuid().v4(),
      pipe: pipe,
      payloadValue: cacheValue?.payloadValue ?? false,
    );
    response.add(pipeDto);
  }

  return response;
}
