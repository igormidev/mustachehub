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
        itemResponse[modelDTO.pipe.mustacheName] = modelDTO.mapValue;
      }

      response.add(itemResponse);
    }

    return response;
  }

  const ModelPipeDto({
    required this.pipe,
    required this.payloadValue,
    required this.uuid,
  });

  @override
  final String uuid;

  @override
  final List<ModelPipeDTOPayload> payloadValue;

  /// Will deeply search from the model with the [pipeId]
  ModelPipeDto? deleteModel({
    required String pipeId,
  }) {
    for (final modelDTO in payloadValue) {
      if (modelDTO.uuid == pipeId) {
        return copyWith(
          payloadValue: [
            for (final item in payloadValue)
              if (item.uuid != pipeId) item,
          ],
        );
      }

      for (final subModel in modelDTO.subModels) {
        final newModel = subModel.deleteModel(pipeId: pipeId);

        if (newModel != null) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == modelDTO.uuid)
                  modelDTO.copyWith(
                    subModels: [
                      for (final model in modelDTO.subModels)
                        if (model.pipe.pipeId == pipeId) newModel else model,
                    ],
                  )
                else
                  item,
            ],
          );
        }
      }
    }

    return null;
  }

  /// Will deeply search from the model with the [pipeId]
  /// and when found will edit with with the [mapFunc]
  /// and return the new model ( simular with copywith,
  /// same model but with that value edited). Will return null
  /// if the model with the [pipeId] is not found.
  ModelPipeDto? deepEdit<P extends Pipe, V>({
    required String payloadId,
    required String pipeId,
    required PipeDTO<P, V> Function(PipeDTO<P, V> oldValue) mapFunc,
  }) {
    // ignore: unnecessary_this
    if (this.pipe.pipeId == pipeId) {
      return (mapFunc(this as PipeDTO<P, V>) as ModelPipeDto);
    }
    for (final payload in payloadValue) {
      if (P == TextPipe && V == String) {
        for (final textDTO in payload.texts) {
          if (textDTO.pipe.pipeId == pipeId) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == payloadId)
                    payload.copyWith(
                      texts: [
                        for (final text in payload.texts)
                          if (text.pipe.pipeId == pipeId)
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

      if (P == BooleanPipe && V == bool) {
        for (final booleanDTO in payload.booleans) {
          if (booleanDTO.pipe.pipeId == pipeId) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == payloadId)
                    payload.copyWith(
                      booleans: [
                        for (final boolean in payload.booleans)
                          if (boolean.pipe.pipeId == pipeId)
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
        if (modelDTO.pipe.pipeId == pipeId) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == payloadId)
                  payload.copyWith(
                    subModels: [
                      for (final model in payload.subModels)
                        if (model.pipe.pipeId == pipeId)
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
          payloadId: payloadId,
          pipeId: pipeId,
          mapFunc: mapFunc,
        );

        if (newModel != null) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == payload.uuid)
                  payload.copyWith(
                    subModels: [
                      for (final model in payload.subModels)
                        if (model.pipe.pipeId == newModel.pipe.pipeId)
                          newModel
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
      uuid: uuid,
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }
}

class ModelPipeDTOPayload {
  final String uuid;
  final List<ModelPipeDto> subModels;
  final List<TextPipeDto> texts;
  final List<BooleanPipeDto> booleans;
  const ModelPipeDTOPayload._({
    required this.uuid,
    required this.subModels,
    required this.texts,
    required this.booleans,
  });

  factory ModelPipeDTOPayload.fromModelPipe(ModelPipe modelPipe) {
    const uuid = Uuid();
    return ModelPipeDTOPayload._(uuid: const Uuid().v4(), texts: [
      for (final item in modelPipe.textPipes)
        TextPipeDto(
          uuid: uuid.v4(),
          pipe: item,
          payloadValue: '',
        ),
    ], booleans: [
      for (final item in modelPipe.booleanPipes)
        BooleanPipeDto(
          uuid: uuid.v4(),
          pipe: item,
          payloadValue: false,
        ),
    ], subModels: [
      for (final item in modelPipe.modelPipes)
        ModelPipeDto(
          uuid: uuid.v4(),
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
    return ModelPipeDTOPayload._(
      uuid: uuid,
      subModels: subModels ?? this.subModels,
      texts: texts ?? this.texts,
      booleans: booleans ?? this.booleans,
    );
  }
}
