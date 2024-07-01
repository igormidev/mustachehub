import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/generate/presenter/states/selected_template_state.dart';

class SelectedTemplateCubit extends HydratedCubit<SelectedTemplateState> {
  SelectedTemplateCubit() : super(SelectedTemplateState.unselected());

  void setTemplate(Template template) =>
      emit(SelectedTemplateState.withData(template: template));
  void unselect() => emit(SelectedTemplateState.unselected());

  @override
  SelectedTemplateState? fromJson(Map<String, dynamic> json) {
    return SelectedTemplateState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(SelectedTemplateState state) {
    return state.toJson();
  }
}
