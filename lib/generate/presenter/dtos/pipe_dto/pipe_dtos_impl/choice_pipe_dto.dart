// ignore_for_file: public_member_api_docs, sort_constructors_first

part of '../pipe_dto.dart';

class ChoicePipeDto extends Equatable implements PipeDTO<ChoicePipe, String> {
  @override
  final String uuid;
  @override
  final ChoicePipe pipe;
  @override
  final String payloadValue;

  const ChoicePipeDto({
    required this.uuid,
    required this.pipe,
    required this.payloadValue,
  });

  @override
  ChoicePipeDto copyWith({
    required String payloadValue,
  }) {
    return ChoicePipeDto(
      uuid: uuid,
      pipe: pipe,
      payloadValue: payloadValue,
    );
  }

  @override
  List<Object?> get props => [
        pipe,
        payloadValue,
      ];

  Map<String, dynamic> toPayloadValue() {
    final name = pipe.mustacheName;
    return {
      name: payloadValue,
      ...pipe.options.asMap().map((_, option) {
        return MapEntry(
            '$name-${option.toMustacheName}', payloadValue == option);
      }),
    };
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uuid': uuid,
      'pipe': pipe.toMap(),
      'payloadValue': payloadValue,
    };
  }

  factory ChoicePipeDto.fromMap(Map<String, dynamic> map) {
    return ChoicePipeDto(
      uuid: map['uuid'] as String,
      pipe: ChoicePipe.fromMap(map['pipe'] as Map<String, dynamic>),
      payloadValue: map['payloadValue'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ChoicePipeDto.fromJson(String source) =>
      ChoicePipeDto.fromMap(json.decode(source) as Map<String, dynamic>);
}

// class ChoicePipeDTOPayload {
//   final String? choosedName;
//   final List<String> options;
//   ChoicePipeDTOPayload({
//     required this.choosedName,
//     required this.options,
//   });

//   ChoicePipeDTOPayload copyWith({
//     String? choosedName,
//     List<String>? options,
//   }) {
//     return ChoicePipeDTOPayload(
//       choosedName: choosedName ?? this.choosedName,
//       options: options ?? this.options,
//     );
//   }

//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'choosedName': choosedName,
//       'options': options,
//     };
//   }

//   factory ChoicePipeDTOPayload.fromMap(Map<String, dynamic> map) {
//     return ChoicePipeDTOPayload(
//         choosedName: map['choosedName'] as String?,
//         options: List<String>.from(
//           (map['options'] as List<String>),
//         ));
//   }

//   String toJson() => json.encode(toMap());

//   factory ChoicePipeDTOPayload.fromJson(String source) =>
//       ChoicePipeDTOPayload.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() =>
//       'ChoicePipeDTOPayload(choosedName: $choosedName, options: $options)';

//   @override
//   bool operator ==(covariant ChoicePipeDTOPayload other) {
//     if (identical(this, other)) return true;

//     return other.choosedName == choosedName &&
//         listEquals(other.options, options);
//   }

//   @override
//   int get hashCode => choosedName.hashCode ^ options.hashCode;
// }
