// ignore_for_file: public_member_api_docs, sort_constructors_first

part of '../pipe_dto.dart';

class BooleanPipeDto extends Equatable implements PipeDTO<BooleanPipe, bool> {
  @override
  final String uuid;
  @override
  final BooleanPipe pipe;
  @override
  final bool payloadValue;

  const BooleanPipeDto({
    required this.uuid,
    required this.pipe,
    required this.payloadValue,
  });

  @override
  BooleanPipeDto copyWith({
    required bool payloadValue,
  }) {
    return BooleanPipeDto(
      uuid: uuid,
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pipe, payloadValue];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'pipe': pipe.toMap(),
      'payloadValue': payloadValue,
    };
  }

  factory BooleanPipeDto.fromMap(Map<String, dynamic> map) {
    return BooleanPipeDto(
      uuid: map['uuid'] as String,
      pipe: BooleanPipe.fromMap(map['pipe'] as Map<String, dynamic>),
      payloadValue: map['payloadValue'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooleanPipeDto.fromJson(String source) =>
      BooleanPipeDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
