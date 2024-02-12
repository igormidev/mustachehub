import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/generate/presenter/states/form_stats_state.dart';

class FormStatsCubit extends HydratedCubit<FormStatsState> {
  FormStatsCubit() : super(FormStatsState.normal(textGridSize: null));

  void changeGridSize(int? size) {
    emit(FormStatsState.normal(textGridSize: size));
  }

  @override
  FormStatsState? fromJson(Map<String, dynamic> json) {
    return FormStatsState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(FormStatsState state) {
    return state.toJson();
  }
}
