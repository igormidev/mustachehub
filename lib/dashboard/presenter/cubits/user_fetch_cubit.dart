import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/dashboard/presenter/states/user_fetch_state.dart';

class UserFetchCubit extends Cubit<UserFetchState> {
  UserFetchCubit() : super(UserFetchState.initial());

  void fetchUser() {
    emit(UserFetchState.loading());
    emit(UserFetchState.done());
  }
}
