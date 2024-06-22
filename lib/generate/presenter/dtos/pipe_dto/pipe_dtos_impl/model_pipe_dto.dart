part of '../pipe_dto.dart';

class ModelPipeDto extends Equatable
    implements PipeDTO<ModelPipe, List<ModelPipeDTOPayload>> {
  @override
  final ModelPipe pipe;

  List<Map<String, dynamic>> get mapValue {
    final List<Map<String, dynamic>> response = [];

    for (final item in payloadValue) {
      final Map<String, dynamic> itemResponse = {};

      for (final textDTO in item.texts) {
        itemResponse[textDTO.pipe.mustacheName] = textDTO.payloadValue;
      }

      for (final booleanDTO in item.booleans) {
        itemResponse[booleanDTO.pipe.mustacheName] = booleanDTO.payloadValue;
      }

      for (final modelDTO in item.subModels) {
        itemResponse[modelDTO.pipe.mustacheName] = modelDTO.payloadValue;
      }

      response.add(itemResponse);
    }

    return response;
  }

  const ModelPipeDto({
    required this.pipe,
    required this.payloadValue,
  });

  @override
  final List<ModelPipeDTOPayload> payloadValue;

  /// Will deeply search from the model with the [id]
  /// and when found will edit with with the [mapFunc]
  /// and return the new model ( simular with copywith,
  /// same model but with that value edited). Will return null
  /// if the model with the [id] is not found.
  ModelPipeDto? deepEdit<P extends Pipe, V>({
    required String modelId,
    required String id,
    required PipeDTO<P, V> Function(PipeDTO<P, V> oldValue) mapFunc,
  }) {
    for (final payload in payloadValue) {
      if (payload.uuid != modelId) continue;
      if (P is TextPipe && V is String) {
        for (final textDTO in payload.texts) {
          if (textDTO.pipe.pipeId == id) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == modelId)
                    payload.copyWith(
                      texts: [
                        for (final text in payload.texts)
                          if (text.pipe.pipeId == id)
                            mapFunc(text as PipeDTO<P, V>) as TextPipeDto
                          else
                            text,
                      ],
                    )
                  else
                    item,
              ],
            );
          }
        }
      }

      if (P is BooleanPipe && V is bool) {
        for (final booleanDTO in payload.booleans) {
          if (booleanDTO.pipe.pipeId == id) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == modelId)
                    payload.copyWith(
                      booleans: [
                        for (final boolean in payload.booleans)
                          if (boolean.pipe.pipeId == id)
                            mapFunc(boolean as PipeDTO<P, V>) as BooleanPipeDto
                          else
                            boolean,
                      ],
                    )
                  else
                    item,
              ],
            );
          }
        }
      }

      for (final modelDTO in payload.subModels) {
        if (modelDTO.pipe.pipeId == id) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == modelId)
                  payload.copyWith(
                    subModels: [
                      for (final model in payload.subModels)
                        if (model.pipe.pipeId == id)
                          mapFunc(model as PipeDTO<P, V>) as ModelPipeDto
                        else
                          model,
                    ],
                  )
                else
                  item,
            ],
          );
        }
      }

      // Now, let's recursively search in the submodels
      for (final modelDTO in payload.subModels) {
        final newModel = modelDTO.deepEdit(
          modelId: modelId,
          id: id,
          mapFunc: mapFunc,
        );

        if (newModel != null) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == modelId)
                  payload.copyWith(
                    subModels: [
                      for (final model in payload.subModels)
                        if (model.pipe.pipeId == id) newModel else model,
                    ],
                  )
                else
                  item,
            ],
          );
        }
      }

      return null;
    }

    return null;
  }

  @override
  List<Object?> get props => [
        pipe,
        payloadValue,
      ];

  @override
  ModelPipeDto copyWith({
    required List<ModelPipeDTOPayload> payloadValue,
  }) {
    return ModelPipeDto(
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'pipe': pipe.toMap(),
  //     'items': items.map((ModelPipeDTOPayload x) => x.toMap()).toList(),
  //   };
  // }

  // factory ModelPipeDto.fromMap(Map<String, dynamic> map) {
  //   return ModelPipeDto(
  //     pipe: ModelPipe.fromMap(map['pipe'] as Map<String, dynamic>),
  //     items: List<ModelPipeDTOPayload>.from(
  //       (map['items'] as List<int>).map<ModelPipeDTOPayload>(
  //         (x) => ModelPipeDTOPayload.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //   );
  // }
}

class ModelPipeDTOPayload {
  final String uuid;
  final List<ModelPipeDto> subModels;
  final List<TextPipeDto> texts;
  final List<BooleanPipeDto> booleans;
  const ModelPipeDTOPayload({
    required this.uuid,
    required this.subModels,
    required this.texts,
    required this.booleans,
  });

  factory ModelPipeDTOPayload.fromModelPipe(ModelPipe modelPipe) {
    return ModelPipeDTOPayload(uuid: modelPipe.pipeId, texts: [
      for (final item in modelPipe.textPipes)
        TextPipeDto(
          pipe: item,
          payloadValue: '',
        ),
    ], booleans: [
      for (final item in modelPipe.booleanPipes)
        BooleanPipeDto(
          pipe: item,
          payloadValue: false,
        ),
    ], subModels: [
      for (final item in modelPipe.modelPipes)
        ModelPipeDto(
          pipe: item,
          payloadValue: const [],
        ),
    ]);
  }

  ModelPipeDTOPayload copyWith({
    List<ModelPipeDto>? subModels,
    List<TextPipeDto>? texts,
    List<BooleanPipeDto>? booleans,
  }) {
    return ModelPipeDTOPayload(
      uuid: uuid,
      subModels: subModels ?? this.subModels,
      texts: texts ?? this.texts,
      booleans: booleans ?? this.booleans,
    );
  }

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'uuid': uuid,
  //     'subModels': subModels.map((x) => x.toMap()).toList(),
  //     'texts': texts.map((x) => x.toMap()).toList(),
  //     'booleans': booleans.map((x) => x.toMap()).toList(),
  //   };
  // }

  // factory ModelPipeDTOPayload.fromMap(Map<String, dynamic> map) {
  //   return ModelPipeDTOPayload(
  //     uuid: map['uuid'] as String,
  //     subModels: List<ModelPipeDto>.from(
  //       (map['subModels'] as List<int>).map<ModelPipeDto>(
  //         (x) => ModelPipeDto.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //     texts: List<TextPipeDto>.from(
  //       (map['texts'] as List<int>).map<TextPipeDto>(
  //         (x) => TextPipeDto.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //     booleans: List<BooleanPipeDto>.from(
  //       (map['booleans'] as List<int>).map<BooleanPipeDto>(
  //         (x) => BooleanPipeDto.fromMap(x as Map<String, dynamic>),
  //       ),
  //     ),
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory ModelPipeDTOPayload.fromJson(String source) =>
  //     ModelPipeDTOPayload.fromMap(json.decode(source) as Map<String, dynamic>);
}
