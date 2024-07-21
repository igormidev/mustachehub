import 'package:commom_source/commom_source.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/generate/presenter/states/template_fetch_state.dart';

class TemplateFetchCubit extends Cubit<TemplateFetchState> {
  final ITemplateRepository _templateRepository;
  TemplateFetchCubit({
    required ITemplateRepository templateRepository,
  })  : _templateRepository = templateRepository,
        super(TemplateFetchState.initial());

  Future<void> getTemplateById({
    required String id,
  }) async {
    emit(TemplateFetchState.loading());
    final result = await _templateRepository.getTemplate(templateId: id);
    result.fold(
      (success) => emit(TemplateFetchState.successFetch(template: success)),
      (failure) => emit(TemplateFetchState.withError(error: failure.message)),
    );
  }

  void setInitial() {
    emit(TemplateFetchState.initial());
  }
}
