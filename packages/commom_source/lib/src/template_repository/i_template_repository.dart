import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:result_dart/result_dart.dart';

abstract class ITemplateRepository {
  Future<Result<Template, SourceError>> getTemplate({
    required String templateId,
  });
}
