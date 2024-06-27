import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'user_collections_state.freezed.dart';
part 'user_collections_state.g.dart';

@freezed
abstract class UserCollectionsState with _$UserCollectionsState {
  factory UserCollectionsState.loading() = _UserCollectionsStateLoading;
  factory UserCollectionsState.processing({
    required UserCollectionRoot userCollections,
  }) = _UserCollectionsStateProcessing;

  factory UserCollectionsState.withData({
    required UserCollectionRoot userCollections,
  }) = _UserCollectionsStateWithData;

  factory UserCollectionsState.error({
    required String message,
  }) = _UserCollectionsStateError;

  factory UserCollectionsState.fromJson(Map<String, dynamic> json) =>
      _$UserCollectionsStateFromJson(json);
}
