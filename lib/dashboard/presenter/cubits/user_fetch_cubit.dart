import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/data/repositories/interfaces/i_user_fetch_repository.dart';
import 'package:mustachehub/dashboard/presenter/states/user_fetch_state.dart';

class UserFetchCubit extends Cubit<UserFetchState> {
  final IUserFetchRepository _userFetchRepository;
  UserFetchCubit({
    required IUserFetchRepository userFetchRepository,
  })  : _userFetchRepository = userFetchRepository,
        super(UserFetchState.initial());

  Future<void> fetchUser() async {
    emit(UserFetchState.loading());

    final state = await _userFetchRepository.getPersistenceUser();
    emit(state);
  }

  void startFromZero() {
    emit(UserFetchState.initial());
  }
}
