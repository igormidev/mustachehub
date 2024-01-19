import 'package:bloc/bloc.dart';
import 'package:commom_states/states/session_state.dart';

class SessionCubit extends Cubit<SessionState> {
  SessionCubit() : super(SessionState.notDeterminedYet());
}
