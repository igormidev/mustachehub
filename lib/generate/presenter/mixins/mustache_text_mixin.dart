import 'package:mason/mason.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';

mixin MustacheTextMixin {
  ContentOutputDto? getOutputDto({
    required ContentOutput output,
    required Map<String, dynamic> payload,
  }) {
    try {
      final texts = _getMustacheText(output.texts, payload);
      if (texts == null) return null;

      return ContentOutputDto.string(
        contents: texts,
      );
    } catch (error) {
      return null;
    }
  }

  List<String>? _getMustacheText(
    List<String> content,
    Map<String, dynamic> payload,
  ) {
    try {
      return content.map((e) => e.render(payload)).toList();
    } catch (error) {
      // } catch (error, stackTrace) {
      // log(error.toString(), stackTrace: stackTrace);
      return null;
    }
  }
}
