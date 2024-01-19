import 'package:bloc/bloc.dart';
import 'package:commom_states/states/loading_state.dart';

class LoadingCubit extends Cubit<LoadingState> {
  LoadingCubit() : super(LoadingState.refreshing());

  void setRefreshing() => emit(LoadingState.refreshing());
  void setToLoading() => emit(LoadingState.processing());
  void setToLoadingDone() => emit(LoadingState.done());
}
