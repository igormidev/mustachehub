import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:collection/collection.dart' show IterableExtension;
part 'user_collection.freezed.dart';
part 'user_collection.g.dart';

@freezed
abstract class UserCollection with _$UserCollection {
  factory UserCollection.folder({
    required String name,
    required String description,
    required String uuid,
    required List<UserCollection> children,
  }) = UserCollectionFolder;

  factory UserCollection.file({
    required Template template,
  }) = UserCollectionFile;

  factory UserCollection.root({
    @Default([]) List<UserCollection> children,
  }) = UserCollectionRoot;

  factory UserCollection.fromJson(Map<String, dynamic> json) =>
      _$UserCollectionFromJson(json);
}

extension FolderExtension on UserCollectionFolder {
  UserCollectionFolder deepDeleteFolderWith(String uuid) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder && e.uuid != uuid)
            e.deepDeleteFolderWith(uuid)
          else if (e is UserCollectionFile)
            e,
      ],
    );
  }

  UserCollectionFolder deepDeleteFileWith(String uuid) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepDeleteFileWith(uuid)
          else if (e is UserCollectionFile && e.template.id != uuid)
            e,
      ],
    );
  }

  UserCollectionFolder deepEdit(
    Template Function(Template oldPackage) templateMapper,
  ) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepEdit(templateMapper)
          else if (e is UserCollectionFile && e.template.id != uuid)
            UserCollectionFile(
              template: templateMapper(e.template),
            ),
      ],
    );
  }

  UserCollectionFolder deepEditTemplateWithId(
    String uuid,
    Template Function(Template oldPackage) templateMapper,
  ) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepEditTemplateWithId(uuid, templateMapper)
          else if (e is UserCollectionFile && e.template.id != uuid)
            UserCollectionFile(
              template: templateMapper(e.template),
            ),
      ],
    );
  }

  Template? getTemplateWithId(String uuid) {
    final child = children
        .whereType<UserCollectionFile>()
        .firstWhereOrNull((e) => e.template.id == uuid)
        ?.template;

    if (child != null) {
      return child;
    }

    for (final e in children.whereType<UserCollectionFolder>()) {
      final child = e.getTemplateWithId(uuid);
      if (child != null) {
        return child;
      }
    }

    return null;
  }
}

extension RootExtension on UserCollectionRoot {
  Template? getTemplateWithId(String uuid) {
    final child = children
        .whereType<UserCollectionFile>()
        .firstWhereOrNull((e) => e.template.id == uuid)
        ?.template;

    if (child != null) {
      return child;
    }

    for (final e in children.whereType<UserCollectionFolder>()) {
      final child = e.getTemplateWithId(uuid);
      if (child != null) {
        return child;
      }
    }

    return null;
  }

  UserCollectionRoot deepDeleteFolderWith(String uuid) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder && e.uuid != uuid)
            e.deepDeleteFolderWith(uuid)
          else if (e is UserCollectionFile)
            e,
      ],
    );
  }

  UserCollectionRoot deepDeleteFileWith(String uuid) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepDeleteFileWith(uuid)
          else if (e is UserCollectionFile && e.template.id != uuid)
            e,
      ],
    );
  }

  UserCollectionRoot deepEdit(
    Template Function(Template oldPackage) templateInfoMapper,
  ) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepEdit(templateInfoMapper)
          else if (e is UserCollectionFile)
            UserCollectionFile(
              template: templateInfoMapper(e.template),
            ),
      ],
    );
  }

  UserCollectionRoot deepEditTemplateWithId(
    String uuid,
    Template Function(Template oldPackage) templateInfoMapper,
  ) {
    return copyWith(
      children: [
        for (final e in children)
          if (e is UserCollectionFolder)
            e.deepEditTemplateWithId(uuid, templateInfoMapper)
          else if (e is UserCollectionFile && e.template.id != uuid)
            UserCollectionFile(
              template: templateInfoMapper(e.template),
            ),
      ],
    );
  }

  UserCollectionIndexesRoot get toIndexes {
    UserCollectionIndexesFile castToFile(UserCollectionFile file) {
      return UserCollectionIndexesFile(
        templateUuid: file.template.id,
      );
    }

    UserCollectionIndexesFolder castFromFolder(UserCollectionFolder folder) {
      List<UserCollectionIndexesFolder> folders = [];
      List<UserCollectionIndexesFile> files = [];

      for (final e in folder.children) {
        if (e is UserCollectionFolder) {
          folders.add(UserCollectionIndexesFolder(
            name: e.name,
            description: e.description,
            children: e.children.map((e) {
              if (e is UserCollectionFolder) {
                return castFromFolder(e);
              } else if (e is UserCollectionFile) {
                return castToFile(e);
              }

              throw Exception('Invalid type');
            }).toList(),
          ));
        } else if (e is UserCollectionFile) {
          files.add(castToFile(e));
        }
      }
      return UserCollectionIndexesFolder(
        name: folder.name,
        description: folder.description,
        children: [
          ...folders,
          ...files,
        ],
      );
    }

    return UserCollectionIndexesRoot(
      children: children.map((e) {
        if (e is UserCollectionFolder) {
          return castFromFolder(e);
        } else if (e is UserCollectionFile) {
          return castToFile(e);
        }

        throw Exception('Invalid type');
      }).toList(),
    );
  }
}
