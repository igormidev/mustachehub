// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:text_analyser/text_analyser.dart';

class VariablesState {
  final Map<String, VariableIdentifierMapper> flatMap;
  final List<TextPipe> textPipes;
  final List<BooleanPipe> booleanPipes;
  final List<ChoicePipe> choicePipes;
  final List<ModelPipe> modelPipes;

  const VariablesState({
    required this.flatMap,
    required this.textPipes,
    required this.booleanPipes,
    required this.choicePipes,
    required this.modelPipes,
  });

  ExpectedPayload get getExpectedPayload => ExpectedPayload(
        textPipes: textPipes,
        booleanPipes: booleanPipes,
        modelPipes: modelPipes,
        choicePipes: choicePipes,
      );

  Map<String, dynamic> toMap() {
    final tokenInJsonFormat =
        flatMap.map((key, value) => MapEntry(key, value.toJson()));
    return <String, dynamic>{
      'flatMap': tokenInJsonFormat,
      'textPipes': textPipes.map((x) => x.toMap()).toList(),
      'booleanPipes': booleanPipes.map((x) => x.toMap()).toList(),
      'choicePipes': choicePipes.map((x) => x.toMap()).toList(),
      'modelPipes': modelPipes.map((x) => x.toMap()).toList(),
    };
  }

  factory VariablesState.fromMap(Map<String, dynamic> map) {
    final res = (map['flatMap'] as Map).cast<String, dynamic>().map(
          (key, value) => MapEntry(
            key,
            VariableIdentifierMapper.fromJson(value),
          ),
        );
    return VariablesState(
      flatMap: res,
      textPipes: List<TextPipe>.from(
        (map['textPipes'] as List<dynamic>).cast<Map>().map<TextPipe>(
              (x) => TextPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
      booleanPipes: List<BooleanPipe>.from(
        (map['booleanPipes'] as List<dynamic>).cast<Map>().map<BooleanPipe>(
              (x) => BooleanPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
      choicePipes: List<ChoicePipe>.from(
        (map['choicePipes'] as List<dynamic>).cast<Map>().map<ChoicePipe>(
              (x) => ChoicePipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
      modelPipes: List<ModelPipe>.from(
        (map['modelPipes'] as List<dynamic>).cast<Map>().map<ModelPipe>(
              (x) => ModelPipe.fromMap(x as Map<String, dynamic>),
            ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory VariablesState.fromJson(String source) =>
      VariablesState.fromMap(json.decode(source) as Map<String, dynamic>);

  bool get isBlank =>
      textPipes.isEmpty &&
      booleanPipes.isEmpty &&
      modelPipes.isEmpty &&
      choicePipes.isEmpty;
}
