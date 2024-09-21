import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:uuid/uuid.dart';

part 'get_functions.h.dart';
part 'calculate_functions.h.dart';

class DtoAdapter {
  Map<String, dynamic> getPayloadFromDtos({
    required List<TextPipe> texts,
    required List<BooleanPipe> booleans,
    required List<ChoicePipe> choices,
    required List<ModelPipe> models,
    required List<TextPipeDto> textDtos,
    required List<BooleanPipeDto> booleanDtos,
    required List<ChoicePipeDto> choiceDtos,
    required List<ModelPipeDto> modelDtos,
  }) {
    final Map<String, dynamic> payload = {};
    payload.addAll(_getTextPayloads(texts, textDtos));
    payload.addAll(_getBoolPayloads(booleans, booleanDtos));
    payload.addAll(_getChoicePayloads(choices, choiceDtos));

    for (final model in modelDtos) {
      payload[model.pipe.mustacheName] = model.mapValue;
    }
    // payload.addAll(_getModelPayloads(models, modelDtos));

    return payload;
  }

  ({
    List<TextPipeDto> textPipes,
    List<BooleanPipeDto> boolPipes,
    List<ChoicePipeDto> choicePipes,
    List<ModelPipeDto> modelPipes,
  }) dtosFromTemplate({
    required ExpectedPayload generatorData,
    required List<TextPipeDto>? oldTextsDtos,
    required List<BooleanPipeDto>? oldBoolDtos,
    required List<ChoicePipeDto>? oldChoicePipes,
    required List<ModelPipeDto>? oldModelDtos,
  }) {
    final List<TextPipeDto> textsResponse = [];
    final List<BooleanPipeDto> booleanResponse = [];
    final List<ChoicePipeDto> choiceResponse = [];

    textsResponse.addAll(
      _calculateTextsPipe(generatorData.textPipes, oldTextsDtos),
    );
    booleanResponse.addAll(
      _calculateBooleansPipe(generatorData.booleanPipes, oldBoolDtos),
    );
    choiceResponse.addAll(
      _calculateChoicesPipe(generatorData.choicePipes, oldChoicePipes),
    );

    final List<ModelPipeDto> modelResponse =
        _calculateModelsPipe(generatorData.modelPipes, oldModelDtos);

    return (
      textPipes: textsResponse,
      boolPipes: booleanResponse,
      choicePipes: choiceResponse,
      modelPipes: modelResponse,
    );
  }
}
