import 'package:commom_states/states/user_collections_state.dart';
import 'package:commom_source/commom_source.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

class UserCollectionsCubit extends HydratedCubit<UserCollectionsState> {
  final IUserCollectionRepository _userCollectionRepository;
  UserCollectionsCubit({
    required IUserCollectionRepository userCollectionRepository,
  })  : _userCollectionRepository = userCollectionRepository,
        super(UserCollectionsState.loading());

  void setNewCollection(UserCollectionRoot root) async {
    emit(UserCollectionsState.withData(
      userCollections: root,
    ));
  }

  Future<void> loadUserCollections() async {
    final UserCollectionRoot? userCollection = state.mapOrNull(
      processing: (state) => state.userCollections,
      withData: (state) => state.userCollections,
    );
    if (userCollection != null) {
      emit(UserCollectionsState.processing(
        userCollections: userCollection,
      ));
    } else {
      emit(UserCollectionsState.loading());
    }

    final result = await _userCollectionRepository.getUserCollection();
    result.fold(
      (UserCollectionRoot userCollection) {
        emit(UserCollectionsState.withData(
          userCollections: userCollection,
        ));
      },
      (SourceError error) {
        emit(UserCollectionsState.error(
          message: error.message,
        ));
      },
    );
  }

  @override
  UserCollectionsState? fromJson(Map<String, dynamic> json) {
    return UserCollectionsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(UserCollectionsState state) {
    return state.toJson();
  }
}
