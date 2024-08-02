import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/src/entities/content_input_types/content_text_section_input.dart';

part 'content_input.freezed.dart';
part 'content_input.g.dart';

@freezed
abstract class ContentInput with _$ContentInput {
  factory ContentInput.listOfTexts({
    required List<ContentTextSectionInput> texts,
  }) = _ContentInput;

  factory ContentInput.fromJson(Map<String, dynamic> json) =>
      _$ContentInputFromJson(json);
}

extension ContentOutputExtension on ContentInput {
  bool get isEmpty => map(
        listOfTexts: (value) {
          final t = value.texts.join();
          return t.isEmpty && t.replaceAll(' ', '').isEmpty;
        },
      );
}
