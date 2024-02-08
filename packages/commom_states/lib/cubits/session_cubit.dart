import 'package:bloc/bloc.dart';
import 'package:commom_states/states/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit() : super(SessionState.notDeterminedYet());

  void setSessionState(SessionState sessionState) {
    emit(sessionState);
  }

  void updateUserPhoto(String newUserPhoto) {
    state.mapOrNull(
      loggedIn: (state) {
        emit(
          state.copyWith(
            user: state.user.copyWith(
              urlDisplayImage: newUserPhoto,
            ),
          ),
        );
      },
    );
  }
}
