import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_text_section_input.freezed.dart';
part 'content_text_section_input.g.dart';

@freezed
abstract class ContentTextSectionInput with _$ContentTextSectionInput {
  factory ContentTextSectionInput({
    required String uuid,
    @Default('') String content,
    @Default('') String title,
    @Default(true) bool willBreakLine,
  }) = _ContentTextSectionInput;

  factory ContentTextSectionInput.fromJson(Map<String, dynamic> json) =>
      _$ContentTextSectionInputFromJson(json);
}
