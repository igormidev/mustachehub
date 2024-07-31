import 'package:freezed_annotation/freezed_annotation.dart';

part 'content_output.freezed.dart';
part 'content_output.g.dart';

@freezed
abstract class ContentOutput with _$ContentOutput {
  factory ContentOutput.listOfTexts({
    @Default(['']) List<String> texts,
  }) = _ContentOutput;

  factory ContentOutput.fromJson(Map<String, dynamic> json) =>
      _$ContentOutputFromJson(json);
}

extension ContentOutputExtension on ContentOutput {
  bool get isEmpty => map(
        listOfTexts: (value) {
          final t = value.texts.join();
          return t.isEmpty && t.replaceAll(' ', '').isEmpty;
        },
      );
}
