import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'delete_collection_state.freezed.dart';

@freezed
abstract class DeleteCollectionState with _$DeleteCollectionState {
  factory DeleteCollectionState.normal() = _DeleteCollectionStateNormal;

  factory DeleteCollectionState.loadingDeleting({
    required String deletingTargetTemplateUUID,
  }) = _DeleteCollectionStateLoadingDeleting;

  factory DeleteCollectionState.error({
    required String message,
  }) = _DeleteCollectionStateError;

  factory DeleteCollectionState.deletedWithSucess({
    required UserCollectionRoot newCollectionAfterDeletingTargetTemplate,
  }) = _DeleteCollectionStateDeletedWithSucess;
}
