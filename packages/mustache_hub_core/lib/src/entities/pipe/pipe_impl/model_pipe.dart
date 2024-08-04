part of '../pipe.dart';

class ModelPipe implements Pipe {
  @override
  String name;

  @override
  final String description;

  @override
  String mustacheName;

  @override
  final String pipeId;

  List<TextPipe> textPipes;
  List<BooleanPipe> booleanPipes;
  List<ModelPipe> modelPipes;

  /// Returns true if the pipe dosen't have any pipe inside it
  bool isEmpty() {
    return textPipes.isEmpty && booleanPipes.isEmpty && modelPipes.isEmpty;
  }

  ModelPipe({
    String? pipeId,
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.textPipes,
    required this.booleanPipes,
    required this.modelPipes,
  }) : pipeId = pipeId ?? const Uuid().v7();

  ModelPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        textPipes = const [],
        booleanPipes = const [],
        modelPipes = const [],
        pipeId = const Uuid().v7();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'pipeId': pipeId,
      'textPipes': textPipes.map((x) => x.toMap()).toList(),
      'booleanPipes': booleanPipes.map((x) => x.toMap()).toList(),
      'modelPipes': modelPipes.map((x) => x.toMap()).toList(),
    };
  }

  factory ModelPipe.fromMap(Map<String, dynamic> map) {
    return ModelPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      pipeId: map['pipeId'] as String,
      textPipes: List<TextPipe>.from(
        (map['textPipes'] as List<dynamic>).map<TextPipe>(
          (x) => TextPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleanPipes: List<BooleanPipe>.from(
        (map['booleanPipes'] as List<dynamic>).map<BooleanPipe>(
          (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
      modelPipes: List<ModelPipe>.from(
        (map['modelPipes'] as List<dynamic>).map<ModelPipe>(
          (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ModelPipe.fromJson(String source) =>
      ModelPipe.fromMap(json.decode(source) as Map<String, dynamic>);

  ModelPipe copyWith({
    String? name,
    String? description,
    String? mustacheName,
    String? pipeId,
    List<TextPipe>? textPipes,
    List<BooleanPipe>? booleanPipes,
    List<ModelPipe>? modelPipes,
  }) {
    return ModelPipe(
      name: name ?? this.name,
      description: description ?? this.description,
      mustacheName: mustacheName ?? this.mustacheName,
      pipeId: pipeId ?? this.pipeId,
      textPipes: textPipes ?? this.textPipes,
      booleanPipes: booleanPipes ?? this.booleanPipes,
      modelPipes: modelPipes ?? this.modelPipes,
    );
  }
}
