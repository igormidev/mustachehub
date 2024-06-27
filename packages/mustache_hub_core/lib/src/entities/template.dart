import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'template.freezed.dart';
part 'template.g.dart';

@freezed
abstract class Template with _$Template {
  factory Template({
    required String id,
    required PackageInfo info,
    required TemplateMetadata metadata,
    required ExpectedPayload payload,
  }) = _Template;

  factory Template.fromJson(Map<String, dynamic> json) =>
      _$TemplateFromJson(json);
}
