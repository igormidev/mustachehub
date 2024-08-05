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
          return MapEntry(option, text == option);
        }),
      },
    });
  }

  return payload;
}
