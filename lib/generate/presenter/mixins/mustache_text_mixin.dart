import 'dart:developer';

import 'package:mustachex/mustachex.dart' as mustachex;
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/dtos/content_output_dto.dart';

mixin MustacheTextMixin {
  ContentOutputDto? getOutputDto({
    required ContentInput output,
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

  List<ContentTextSectionInput>? _getMustacheText(
    List<ContentTextSectionInput> content,
    Map<String, dynamic> payload,
  ) {
    try {
      return content.map((ContentTextSectionInput e) {
        return e.copyWith(
          content: mustachex.Template(e.content).renderString(payload),
          // content: e.content.render(payload),
        );
      }).toList();
    } catch (error) {
      log(error.toString());

      // } catch (error, stackTrace) {
      // log(error.toString(), stackTrace: stackTrace);
      return null;
    }
  }
}
