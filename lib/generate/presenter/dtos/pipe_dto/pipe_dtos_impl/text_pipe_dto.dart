part of '../pipe_dto.dart';

class TextPipeDto extends Equatable implements PipeDTO<TextPipe, String> {
  @override
  final TextPipe pipe;
  @override
  final String? payloadValue;

  const TextPipeDto({
    required this.pipe,
    required this.payloadValue,
  });

  @override
  TextPipeDto copyWith({
    required String? payloadValue,
  }) {
    return TextPipeDto(
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pipe, if (payloadValue != null) payloadValue!];
}
