import 'package:collection/collection.dart';
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

extension TemplateMetadataExtension on TemplateMetadata {
   TemplatePermissions? permissionWithId(String? id) {
    if (id == null) return null;
    final permissionText = usersPermission[id];
    if (permissionText == null) return null;
    return TemplatePermissions.values
        .firstWhereOrNull((element) => element.name == permissionText);
  }
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
