part of '../pipe.dart';

class TextPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String pipeId;

  final bool isRequired;

  TextPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.isRequired,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v7();

  TextPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        pipeId = const Uuid().v7(),
        isRequired = false;

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        isRequired,
        pipeId,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'pipeId': pipeId,
      'isRequired': isRequired,
    };
  }

  factory TextPipe.fromMap(Map<String, dynamic> map) {
    return TextPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      pipeId: map['pipeId'] as String,
      isRequired: map['isRequired'] as bool,
    );
  }

  String toJson() => json.encode(toMap());

  factory TextPipe.fromJson(String source) =>
      TextPipe.fromMap(json.decode(source) as Map<String, dynamic>);
}
