import 'package:mason/mason.dart';

mixin MustacheTextMixin {
  String? getMustacheText(
    String content,
    Map<String, dynamic> payload,
  ) {
    try {
      return content.render(payload);
    } catch (error) {
      // } catch (error, stackTrace) {
      // log(error.toString(), stackTrace: stackTrace);
      return null;
    }
  }
}
