import 'package:commom_source/commom_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/app_core/mixins/global_loader_definer.dart';
import 'package:mustachehub/collection/presenter/states/delete_collection_state.dart';

class DeleteCollectionCubit extends Cubit<DeleteCollectionState>
    with GlobalLoadingEnforcer {
  final IUserCollectionRepository _userCollectionRepository;
  DeleteCollectionCubit({
    required IUserCollectionRepository userCollectionRepository,
  })  : _userCollectionRepository = userCollectionRepository,
        super(DeleteCollectionState.normal());

  void returnToNormalState() {
    emit(DeleteCollectionState.normal());
  }

  Future<void> deleteFileWithId({
    required UserCollectionRoot root,
    required String templateUUID,
  }) async {
    emit(DeleteCollectionState.loadingDeleting(
      deletingTargetTemplateUUID: templateUUID,
    ));
    final response = await _userCollectionRepository.deleteUserCollection(
      templateUUID: templateUUID,
    );

    response.fold(
      (UserCollectionRoot userCollection) {
        emit(DeleteCollectionState.deletedWithSucess(
          newCollectionAfterDeletingTargetTemplate: userCollection,
        ));
      },
      (SourceError error) {
        emit(DeleteCollectionState.error(
          message: error.message,
        ));
      },
    );
  }
}
