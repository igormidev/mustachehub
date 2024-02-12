part of 'dto_adapter.dart';

(
  List<TextPipeDto> textPipes,
  List<BooleanPipeDto> boolPipes,
) _calculateModelsPipe(
  List<ModelPipe> pipes,
  List<TextPipeDto>? oldTextsDtos,
  List<BooleanPipeDto>? oldBoolDtos,
) {
  final List<TextPipeDto> textsResponse = [];
  final List<BooleanPipeDto> booleanResponse = [];

  for (final ModelPipe pipe in pipes) {
    textsResponse.addAll(_calculateTextsPipe(pipe.textPipes, oldTextsDtos));
    booleanResponse.addAll(
      _calculateBooleansPipe(pipe.booleanPipes, oldBoolDtos),
    );

    final modelResponse = _calculateModelsPipe(
      pipe.modelPipes,
      oldTextsDtos,
      oldBoolDtos,
    );
    textsResponse.addAll(modelResponse.$1);
    booleanResponse.addAll(modelResponse.$2);
  }

  return (textsResponse, booleanResponse);
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
      pipe: pipe,
      payloadValue: cacheValue?.payloadValue ?? false,
    );
    response.add(pipeDto);
  }

  return response;
}
