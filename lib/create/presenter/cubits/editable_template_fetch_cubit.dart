import 'package:commom_source/commom_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/states/editable_template_fetch_state.dart';

class EditableTemplateFetchCubit extends Cubit<EditableTemplateFetchState> {
  final ITemplateRepository _templateRepository;
  EditableTemplateFetchCubit({
    required ITemplateRepository templateRepository,
  })  : _templateRepository = templateRepository,
        super(EditableTemplateFetchState.initial());

  Future<void> getTemplateById({
    required String id,
  }) async {
    emit(EditableTemplateFetchState.loading());
    final result = await _templateRepository.getTemplate(templateId: id);
    result.fold(
      (success) =>
          emit(EditableTemplateFetchState.successFetch(template: success)),
      (failure) =>
          emit(EditableTemplateFetchState.withError(error: failure.message)),
    );
  }

  void setInitial() {
    emit(EditableTemplateFetchState.initial());
  }
}
