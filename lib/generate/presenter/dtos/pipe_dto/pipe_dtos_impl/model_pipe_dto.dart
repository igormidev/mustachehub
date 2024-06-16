part of '../pipe_dto.dart';

class ModelPipeDto extends Equatable implements PipeDTO<ModelPipe, Map> {
  @override
  final ModelPipe pipe;
  @override
  final Map? payloadValue;

  final List<ModelPipeDto> subModels;
  final List<TextPipeDto> texts;
  final List<BooleanPipeDto> booleans;

  const ModelPipeDto({
    required this.pipe,
    required this.payloadValue,
    required this.subModels,
    required this.texts,
    required this.booleans,
  });

  @override
  ModelPipeDto copyWith({
    ModelPipe? pipe,
    Map? payloadValue,
    List<ModelPipeDto>? subModels,
    List<TextPipeDto>? texts,
    List<BooleanPipeDto>? booleans,
  }) {
    return ModelPipeDto(
      pipe: pipe ?? this.pipe,
      payloadValue: payloadValue ?? this.payloadValue,
      subModels: subModels ?? this.subModels,
      texts: texts ?? this.texts,
      booleans: booleans ?? this.booleans,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipe': pipe.toMap(),
      'payloadValue': payloadValue,
      'subModels': subModels.map((x) => x.toMap()).toList(),
      'texts': texts.map((x) => x.toMap()).toList(),
      'booleans': booleans.map((x) => x.toMap()).toList(),
    };
  }

  factory ModelPipeDto.fromMap(Map<String, dynamic> map) {
    return ModelPipeDto(
      pipe: ModelPipe.fromMap(map['pipe'] as Map<String, dynamic>),
      payloadValue: map['payloadValue'] != null
          ? map['payloadValue'] as Map<String, dynamic>
          : null,
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
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelPipeDto.fromJson(String source) =>
      ModelPipeDto.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      pipe,
      subModels,
      texts,
      booleans,
      if (payloadValue != null) payloadValue!,
    ];
  }
}
