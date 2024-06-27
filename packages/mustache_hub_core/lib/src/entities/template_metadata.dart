import 'package:freezed_annotation/freezed_annotation.dart';

part 'template_metadata.freezed.dart';
part 'template_metadata.g.dart';

@freezed
abstract class TemplateMetadata with _$TemplateMetadata {
  factory TemplateMetadata({
    required bool isPrivate,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Map<String, String> usersPermission,
  }) = _TemplateMetadata;

  factory TemplateMetadata.fromJson(Map<String, dynamic> json) =>
      _$TemplateMetadataFromJson(json);
}

enum TemplatePermissions {
  readOnly,
  allowWrite,
  fullAccess;

  static TemplatePermissions fromName(String name) {
    switch (name) {
      case 'readOnly':
        return TemplatePermissions.readOnly;
      case 'allowWrite':
        return TemplatePermissions.allowWrite;
      case 'fullAccess':
        return TemplatePermissions.fullAccess;
      default:
        throw Exception('Invalid name');
    }
  }
}
