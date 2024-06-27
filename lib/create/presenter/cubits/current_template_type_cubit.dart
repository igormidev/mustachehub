import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/presenter/states/current_template_type_state.dart';

class CurrentTemplateTypeCubit extends HydratedCubit<CurrentTemplateTypeState> {
  CurrentTemplateTypeCubit() : super(CurrentTemplateTypeState.creating());

  /// If the user has not a previous template and is creating one from zero
  Future<void> declareThatUserIsCreatingTemplate() async {
    emit(CurrentTemplateTypeState.creating());
  }

  @override
  CurrentTemplateTypeState? fromJson(Map<String, dynamic> json) {
    return CurrentTemplateTypeState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(CurrentTemplateTypeState state) {
    return state.toJson();
  }
}
