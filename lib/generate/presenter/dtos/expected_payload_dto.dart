// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class ExpectedPayloadDto extends Equatable {
  final List<TextPipeDto> textDtos;
  final List<BooleanPipeDto> booleanDtos;

  const ExpectedPayloadDto({
    required this.textDtos,
    required this.booleanDtos,
  });

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [textDtos, booleanDtos];

  ExpectedPayloadDto copyWith({
    List<TextPipeDto>? textDtos,
    List<BooleanPipeDto>? booleanDtos,
  }) {
    return ExpectedPayloadDto(
      textDtos: textDtos ?? this.textDtos,
      booleanDtos: booleanDtos ?? this.booleanDtos,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'textDtos': textDtos.map((x) => x.toMap()).toList(),
      'booleanDtos': booleanDtos.map((x) => x.toMap()).toList(),
    };
  }

  factory ExpectedPayloadDto.fromMap(Map<String, dynamic> map) {
    return ExpectedPayloadDto(
      textDtos: List<TextPipeDto>.from(
        (map['textDtos'] as List<int>).map<TextPipeDto>(
          (x) => TextPipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
      booleanDtos: List<BooleanPipeDto>.from(
        (map['booleanDtos'] as List<int>).map<BooleanPipeDto>(
          (x) => BooleanPipeDto.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ExpectedPayloadDto.fromJson(String source) =>
      ExpectedPayloadDto.fromMap(json.decode(source) as Map<String, dynamic>);
}