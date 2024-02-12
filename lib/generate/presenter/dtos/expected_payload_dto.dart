// ignore_for_file: public_member_api_docs, sort_constructors_first
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
}
