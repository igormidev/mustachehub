import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_identifier.freezed.dart';

@freezed
abstract class TokenIdentifier with _$TokenIdentifier {
  factory TokenIdentifier.text({
    required String? parrentName,
    required String name,
  }) = TextTokenIdentifier;

  factory TokenIdentifier.boolean({
    required String? parrentName,
    required String name,
  }) = BooleanTokenIdentifier;

  factory TokenIdentifier.model({
    required String? parrentName,
    required String name,
    required List<String> textsNames,
    required List<String> booleanNames,
    required List<String> subModelsNames,
  }) = ModelTokenIdentifier;
}
