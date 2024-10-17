part of 'dto_adapter.dart';

Map<String, dynamic> _getTextPayloads(
  List<TextPipe> pipes,
  List<TextPipeDto> dtos,
) {
  final Map<String, dynamic> payload = {};
  for (final textPipe in pipes) {
    final dto = dtos.firstWhere((dto) => dto.pipe.pipeId == textPipe.pipeId);
    payload.addAll(getTextValue(dto));
  }

  return payload;
}

Map<String, dynamic> getTextValue(TextPipeDto dto) {
  final payloadValue = dto.payloadValue;
  final isEmtpy =
      payloadValue == null || payloadValue.replaceAll(' ', '').isEmpty;
  final mustacheName = dto.pipe.mustacheName;

  return {
    mustacheName: isEmtpy ? '[ $mustacheName ]' : payloadValue,
    '$mustacheName-empty': isEmtpy,
  };
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
    payload.addAll(dto.toPayloadValue());
  }

  return payload;
}
