// ignore_for_file: public_member_api_docs, sort_constructors_first

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

      for (final choiceDTO in item.choices) {
        // itemResponse[choiceDTO.pipe.mustacheName] = choiceDTO.payloadValue;
        choiceDTO.toPayload().forEach(
          (key, value) {
            itemResponse[key] = value;
          },
        );
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
                        if (model.uuid == newModel.uuid) newModel else model,
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
    // required String payloadId,
    required String pipeDtoUUID,
    required PipeDTO<P, V> Function(PipeDTO<P, V> oldValue) mapFunc,
  }) {
    // ignore: unnecessary_this
    if (this.uuid == pipeDtoUUID) {
      return (mapFunc(this as PipeDTO<P, V>) as ModelPipeDto);
    }
    for (final payload in payloadValue) {
      if (P == TextPipe && V == String) {
        for (final textDTO in payload.texts) {
          if (textDTO.uuid == pipeDtoUUID) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == payload.uuid)
                    payload.copyWith(
                      texts: [
                        for (final text in payload.texts)
                          if (text.uuid == pipeDtoUUID)
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

      if (P == ChoicePipe && V == String) {
        for (final choiceDTO in payload.choices) {
          if (choiceDTO.uuid == pipeDtoUUID) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == payload.uuid)
                    payload.copyWith(
                      choices: [
                        for (final choice in payload.choices)
                          if (choice.uuid == pipeDtoUUID)
                            mapFunc(choice as PipeDTO<P, V>) as ChoicePipeDto
                          else
                            choice,
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
          if (booleanDTO.uuid == pipeDtoUUID) {
            return copyWith(
              payloadValue: [
                for (final item in payloadValue)
                  if (item.uuid == booleanDTO.uuid)
                    payload.copyWith(
                      booleans: [
                        for (final boolean in payload.booleans)
                          if (boolean.uuid == pipeDtoUUID)
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
        if (modelDTO.uuid == pipeDtoUUID) {
          return copyWith(
            payloadValue: [
              for (final item in payloadValue)
                if (item.uuid == modelDTO.uuid)
                  payload.copyWith(
                    subModels: [
                      for (final model in payload.subModels)
                        if (model.uuid == pipeDtoUUID)
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
          // payloadId: payloadId,
          // pipeId: pipeId,
          pipeDtoUUID: pipeDtoUUID,
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

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'pipe': pipe.toMap(),
      'payloadValue': payloadValue.map((x) => x.toMap()).toList(),
    };
  }

  String toJson() => json.encode(toMap());

  factory ModelPipeDto.fromMap(Map<String, dynamic> map) {
    return ModelPipeDto(
      uuid: map['uuid'] as String,
      pipe: ModelPipe.fromMap(map['pipe'] as Map<String, dynamic>),
      payloadValue: List<ModelPipeDTOPayload>.from(
        (map['payloadValue'] as List<int>).map<ModelPipeDTOPayload>(
          (x) => ModelPipeDTOPayload.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  factory ModelPipeDto.fromJson(String source) =>
      ModelPipeDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

class ModelPipeDTOPayload {
  final String uuid;
  final List<ModelPipeDto> subModels;
  final List<TextPipeDto> texts;
  final List<BooleanPipeDto> booleans;
  final List<ChoicePipeDto> choices;
  const ModelPipeDTOPayload({
    required this.uuid,
    required this.subModels,
    required this.texts,
    required this.booleans,
    required this.choices,
  });
  const ModelPipeDTOPayload._({
    required this.uuid,
    required this.subModels,
    required this.texts,
    required this.booleans,
    required this.choices,
  });

  factory ModelPipeDTOPayload.fromModelPipe(ModelPipe modelPipe) {
    const uuid = Uuid();
    return ModelPipeDTOPayload._(uuid: '${uuid.v7()}${uuid.v7()}', texts: [
      for (final item in modelPipe.textPipes)
        TextPipeDto(
          uuid: '${uuid.v7()}${uuid.v7()}',
          pipe: item,
          payloadValue: '',
        ),
    ], choices: [
      for (final item in modelPipe.choicePipes)
        ChoicePipeDto(
          uuid: '${uuid.v7()}${uuid.v7()}',
          pipe: item,
          payloadValue: '',
        ),
    ], booleans: [
      for (final item in modelPipe.booleanPipes)
        BooleanPipeDto(
          uuid: '${uuid.v7()}${uuid.v7()}',
          pipe: item,
          payloadValue: false,
        ),
    ], subModels: [
      for (final item in modelPipe.modelPipes)
        ModelPipeDto(
          uuid: '${uuid.v7()}${uuid.v7()}',
          pipe: item,
          payloadValue: const [],
        ),
    ]);
  }

  ModelPipeDTOPayload copyWith({
    String? uuid,
    List<ModelPipeDto>? subModels,
    List<TextPipeDto>? texts,
    List<BooleanPipeDto>? booleans,
    List<ChoicePipeDto>? choices,
  }) {
    return ModelPipeDTOPayload(
      uuid: uuid ?? this.uuid,
      subModels: subModels ?? this.subModels,
      texts: texts ?? this.texts,
      booleans: booleans ?? this.booleans,
      choices: choices ?? this.choices,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'subModels': subModels.map((x) => x.toMap()).toList(),
      'texts': texts.map((x) => x.toMap()).toList(),
      'booleans': booleans.map((x) => x.toMap()).toList(),
      'choices': choices.map((x) => x.toMap()).toList(),
    };
  }

  factory ModelPipeDTOPayload.fromMap(Map<String, dynamic> map) {
    return ModelPipeDTOPayload(
      uuid: map['uuid'] as String,
      subModels: List<ModelPipeDto>.from(
        (map['subModels'] as List<int>).map<ModelPipeDto>(
          (x) => ModelPipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      texts: List<TextPipeDto>.from(
        (map['texts'] as List<int>).map<TextPipeDto>(
          (x) => TextPipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleans: List<BooleanPipeDto>.from(
        (map['booleans'] as List<int>).map<BooleanPipeDto>(
          (x) => BooleanPipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      choices: List<ChoicePipeDto>.from(
        (map['choices'] as List<int>).map<ChoicePipeDto>(
          (x) => ChoicePipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelPipeDTOPayload.fromJson(String source) =>
      ModelPipeDTOPayload.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ModelPipeDTOPayload(uuid: $uuid, subModels: $subModels, texts: $texts, booleans: $booleans)';
  }
}
