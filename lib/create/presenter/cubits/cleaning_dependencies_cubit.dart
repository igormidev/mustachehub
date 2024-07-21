import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/app_core/mixins/global_loader_definer.dart';
import 'package:mustachehub/create/presenter/states/cleaning_dependencies_state.dart';

class CleaningDependenciesCubit extends Cubit<CleaningDependenciesState>
    with GlobalLoadingEnforcer {
  CleaningDependenciesCubit() : super(CleaningDependenciesState.normal());

  void setNormal() => emit(CleaningDependenciesState.normal());
  void setCleaningDependencies() =>
      emit(CleaningDependenciesState.cleaningDependencies());
  void setEndClean() => emit(CleaningDependenciesState.endClean());
}
