import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_identifier.freezed.dart';

@freezed
abstract class TokenIdentifier with _$TokenIdentifier {
  const factory TokenIdentifier.text({
    required String? parrentName,
    required String name,
  }) = TextTokenIdentifier;

  const factory TokenIdentifier.boolean({
    required String? parrentName,
    required String name,
  }) = BooleanTokenIdentifier;

  const factory TokenIdentifier.model({
    required String? parrentName,
    required String name,
    required List<String> textsNames,
    required List<String> booleanNames,
    required List<String> subModelsNames,
  }) = ModelTokenIdentifier;

  factory TokenIdentifier.fromJson(Map<String, dynamic> json) =>
      _$TokenIdentifierFromJson(json);
}
