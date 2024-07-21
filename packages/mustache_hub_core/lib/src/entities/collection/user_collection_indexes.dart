// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_collection_indexes.freezed.dart';
part 'user_collection_indexes.g.dart';

@freezed
abstract class UserCollectionIndexes with _$UserCollectionIndexes {
  @JsonSerializable(explicitToJson: true)
  factory UserCollectionIndexes.folder({
    required String name,
    required String description,
    required List<UserCollectionIndexes> children,
  }) = UserCollectionIndexesFolder;

  @JsonSerializable(explicitToJson: true)
  factory UserCollectionIndexes.file({
    required String templateUuid,
  }) = UserCollectionIndexesFile;

  @JsonSerializable(explicitToJson: true)
  factory UserCollectionIndexes.root({
    required List<UserCollectionIndexes> children,
  }) = UserCollectionIndexesRoot;

  factory UserCollectionIndexes.fromJson(Map<String, dynamic> json) =>
      _$UserCollectionIndexesFromJson(json);
}
