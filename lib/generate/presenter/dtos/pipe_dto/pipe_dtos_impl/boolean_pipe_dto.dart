part of '../pipe_dto.dart';

class BooleanPipeDto extends Equatable implements PipeDTO<BooleanPipe, bool> {
  @override
  final BooleanPipe pipe;
  @override
  final bool payloadValue;

  const BooleanPipeDto({
    required this.pipe,
    required this.payloadValue,
  });

  @override
  BooleanPipeDto copyWith({
    required bool payloadValue,
  }) {
    return BooleanPipeDto(
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pipe, payloadValue];
}
