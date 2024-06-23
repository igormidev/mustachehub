import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustachehub/create/data/repositories/interfaces/i_template_repository.dart';
import 'package:mustachehub/create/presenter/state/current_template_type_state.dart';

class CurrentTemplateTypeCubit extends HydratedCubit<CurrentTemplateTypeState> {
  final ITemplateRepository _templateRepository;
  CurrentTemplateTypeCubit({
    required ITemplateRepository templateRepository,
  })  : _templateRepository = templateRepository,
        super(CurrentTemplateTypeState.loading());

  Future<void> getCurrentTemplate({required String packageId}) async {
    emit(CurrentTemplateTypeState.loading());
    final response = await _templateRepository.getTemplate(
      packageId: packageId,
    );

    emit(response);
  }

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
