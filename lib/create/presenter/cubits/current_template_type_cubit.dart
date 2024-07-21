import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/states/current_template_type_state.dart';

class CurrentTemplateTypeCubit extends HydratedCubit<CurrentTemplateTypeState> {
  CurrentTemplateTypeCubit() : super(CurrentTemplateTypeState.creating());

  /// If the user has not a previous template and is creating one from zero
  Future<void> declareThatUserIsCreatingTemplate() async {
    emit(CurrentTemplateTypeState.creating());
  }

  /// If the user has a previous template and is editing it
  Future<void> declareThatUserIsEditingTemplate({
    required Template template,
  }) async {
    emit(CurrentTemplateTypeState.withExistingTemplate(
      template: template,
    ));
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
