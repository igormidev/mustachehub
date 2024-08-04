part of '../pipe.dart';

class ChoicePipe extends Equatable implements Pipe {
  @override
  final String name;

  @override
  final String description;

  @override
  final String mustacheName;

  @override
  final String pipeId;

  /// The options that the user can choose between
  final List<String> options;

  ChoicePipe({
    required this.name,
    required this.description,
    required this.mustacheName,
    required this.options,
    String? pipeId,
  }) : pipeId = pipeId ?? const Uuid().v7();

  ChoicePipe.emptyPlaceholder()
      : name = '',
        description = '',
        mustacheName = '',
        pipeId = const Uuid().v7(),
        options = ['', ''];

  @override
  List<Object> get props => [name, description, mustacheName, pipeId];

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'mustacheName': mustacheName,
      'pipeId': pipeId,
      'options': options,
    };
  }

  factory ChoicePipe.fromMap(Map<String, dynamic> map) {
    return ChoicePipe(
      name: map['name'] as String,
      description: map['description'] as String,
      mustacheName: map['mustacheName'] as String,
      pipeId: map['pipeId'] as String,
      options: List<String>.from(
        (map['options'] as List<String>),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ChoicePipe.fromJson(String source) =>
      ChoicePipe.fromMap(json.decode(source) as Map<String, dynamic>);
}
