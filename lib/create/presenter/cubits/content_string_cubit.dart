import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';

class ContentStringCubit extends HydratedCubit<ContentStringState> {
  ContentStringCubit()
      : super(ContentStringState.normal(
            currentText: ContentOutput.listOfTexts()));

  void resetToDefault() {
    emit(ContentStringState.normal(currentText: ContentOutput.listOfTexts()));
  }

  void setCubit({
    required int index,
    required String text,
  }) {
    final newTexts = [...state.currentText.texts];

    newTexts[index] = text;

    emit(
      ContentStringState.normal(
        currentText: ContentOutput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void addNew() {
    final newTexts = [...state.currentText.texts];

    newTexts.add('');

    emit(
      ContentStringState.normal(
        currentText: ContentOutput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void removeAt(int index) {
    final newTexts = [...state.currentText.texts];

    newTexts.removeAt(index);

    emit(
      ContentStringState.normal(
        currentText: ContentOutput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void setStateFromOutput(ContentOutput output) {
    emit(
      ContentStringState.normal(
        currentText: output,
      ),
    );
  }

  @override
  ContentStringState? fromJson(Map<String, dynamic> json) {
    return ContentStringState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(ContentStringState state) {
    return state.toJson();
  }
}
