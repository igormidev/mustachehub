// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../pipe_dto.dart';

class TextPipeDto extends Equatable implements PipeDTO<TextPipe, String> {
  @override
  final String uuid;
  @override
  final TextPipe pipe;
  @override
  final String? payloadValue;

  const TextPipeDto({
    required this.uuid,
    required this.pipe,
    required this.payloadValue,
  });

  @override
  TextPipeDto copyWith({
    required String? payloadValue,
  }) {
    return TextPipeDto(
      uuid: uuid,
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [pipe, if (payloadValue != null) payloadValue!];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'pipe': pipe.toMap(),
      'payloadValue': payloadValue,
    };
  }

  factory TextPipeDto.fromMap(Map<String, dynamic> map) {
    return TextPipeDto(
      uuid: map['uuid'] as String,
      pipe: TextPipe.fromMap(map['pipe'] as Map<String, dynamic>),
      payloadValue:
          map['payloadValue'] != null ? map['payloadValue'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory TextPipeDto.fromJson(String source) =>
      TextPipeDto.fromMap(json.decode(source) as Map<String, dynamic>);
}
