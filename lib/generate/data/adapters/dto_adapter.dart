import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';
import 'package:enchanted_collection/enchanted_collection.dart';

part 'get_functions.h.dart';
part 'calculate_functions.h.dart';

class DtoAdapter {
  Map<String, dynamic> getPayloadFromDtos({
    required List<TextPipe> texts,
    required List<BooleanPipe> booleans,
    required List<ModelPipe> models,
    required List<TextPipeDto> textDtos,
    required List<BooleanPipeDto> booleanDtos,
    required List<ModelPipeDto> modelDtos,
  }) {
    final Map<String, dynamic> payload = {};
    payload.addAll(_getTextPayloads(texts, textDtos));
    payload.addAll(_getBoolPayloads(booleans, booleanDtos));
    for (final model in modelDtos) {
      payload[model.pipe.mustacheName] = model.payloadValue;
    }

    return payload;
  }

  ({
    List<TextPipeDto> textPipes,
    List<BooleanPipeDto> boolPipes,
    List<ModelPipeDto> modelPipes,
  }) dtosFromTemplate(
    ExpectedPayload generatorData,
    List<TextPipeDto>? oldTextsDtos,
    List<BooleanPipeDto>? oldBoolDtos,
    List<ModelPipeDto>? oldModelDtos,
  ) {
    final List<TextPipeDto> textsResponse = [];
    final List<BooleanPipeDto> booleanResponse = [];

    textsResponse.addAll(
      _calculateTextsPipe(generatorData.textPipes, oldTextsDtos),
    );
    booleanResponse.addAll(
      _calculateBooleansPipe(generatorData.booleanPipes, oldBoolDtos),
    );

    final List<ModelPipeDto> modelResponse =
        _calculateModelsPipe(generatorData.modelPipes, oldModelDtos);

    return (
      textPipes: textsResponse,
      boolPipes: booleanResponse,
      modelPipes: modelResponse,
    );
  }
}
