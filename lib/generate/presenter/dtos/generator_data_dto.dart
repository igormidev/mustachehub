// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:mustachehub/generate/presenter/dtos/pipe_dto/pipe_dto.dart';

class GeneratorDataDto extends Equatable {
  final String? generatedText;
  final List<TextPipeDto> textDtos;
  final List<BooleanPipeDto> booleanDtos;

  const GeneratorDataDto({
    required this.generatedText,
    required this.textDtos,
    required this.booleanDtos,
  });

  @override
  List<Object> get props => [
        if (generatedText != null) generatedText!,
        textDtos,
        booleanDtos,
      ];

  GeneratorDataDto copyWith({
    String? generatedText,
    List<TextPipeDto>? textDtos,
    List<BooleanPipeDto>? booleanDtos,
  }) {
    return GeneratorDataDto(
      generatedText: generatedText ?? this.generatedText,
      textDtos: textDtos ?? this.textDtos,
      booleanDtos: booleanDtos ?? this.booleanDtos,
    );
  }
}
