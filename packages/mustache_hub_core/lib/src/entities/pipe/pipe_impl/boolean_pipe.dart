part of '../pipe.dart';

class BooleanPipe extends Equatable implements Pipe {
  @override
  final String name;
  @override
  final String description;
  @override
  final String mustacheName;
  @override
  final String pipeId;

  BooleanPipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v1();

  BooleanPipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        pipeId = const Uuid().v1();

  @override
  List<Object> get props => [
        name,
        description,
        mustacheName,
        pipeId,
      ];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'pipeId': pipeId,
    };
  }

  factory BooleanPipe.fromMap(Map<String, dynamic> map) {
    return BooleanPipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      pipeId: map['pipeId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory BooleanPipe.fromJson(String source) =>
      BooleanPipe.fromMap(json.decode(source) as Map<String, dynamic>);
}
