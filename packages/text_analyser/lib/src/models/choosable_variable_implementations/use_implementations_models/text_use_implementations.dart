import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_use_implementations.freezed.dart';
part 'text_use_implementations.g.dart';

@freezed
abstract class TextUseImplementations with _$TextUseImplementations {
  factory TextUseImplementations.normalValue() =
      _TextUseImplementationsNormalValue;
  factory TextUseImplementations.invertedValue() =
      _TextUseImplementationsInvertedValue;
  factory TextUseImplementations.textValue() = _TextUseImplementationsTextValue;
  factory TextUseImplementations.fromJson(Map<String, dynamic> json) =>
      _$TextUseImplementationsFromJson(json);
}
