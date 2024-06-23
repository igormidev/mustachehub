// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TokenType {
  const TokenType(this.name);

  final String name;

  @override
  String toString() => '(TokenType $name)';

  static const TokenType text = TokenType('text');
  static const TokenType openDelimiter = TokenType('openDelimiter');
  static const TokenType closeDelimiter = TokenType('closeDelimiter');

  // A sigil is the word commonly used to describe the special character at the
  // start of mustache tag i.e. #, ^ or /.
  static const TokenType sigil = TokenType('sigil');
  static const TokenType identifier = TokenType('identifier');
  static const TokenType dot = TokenType('dot');

  static const TokenType changeDelimiter = TokenType('changeDelimiter');
  static const TokenType whitespace = TokenType('whitespace');
  static const TokenType lineEnd = TokenType('lineEnd');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory TokenType.fromMap(Map<String, dynamic> map) {
    return TokenType(
      map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory TokenType.fromJson(String source) =>
      TokenType.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Token {
  Token(this.type, this.value, this.start, this.end);

  final TokenType type;
  final String value;

  final int start;
  final int end;

  @override
  String toString() => '(Token ${type.name} \"$value\" $start $end)';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.toMap(),
      'value': value,
      'start': start,
      'end': end,
    };
  }

  factory Token.fromMap(Map<String, dynamic> map) {
    return Token(
      TokenType.fromMap(map['type'] as Map<String, dynamic>),
      map['value'] as String,
      map['start'] as int,
      map['end'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Token.fromJson(String source) =>
      Token.fromMap(json.decode(source) as Map<String, dynamic>);
}
