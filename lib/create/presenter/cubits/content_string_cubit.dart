import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/states/content_string_state.dart';
import 'package:uuid/uuid.dart';

class ContentStringCubit extends HydratedCubit<ContentStringState> {
  final Uuid _uuid;
  ContentStringCubit({
    required Uuid uuid,
  })  : _uuid = uuid,
        super(ContentStringState.normal(
            currentText: ContentInput.listOfTexts(
          texts: [ContentTextSectionInput(uuid: uuid.v7())],
        )));

  void resetToDefault() {
    emit(ContentStringState.normal(
        currentText: ContentInput.listOfTexts(
      texts: [ContentTextSectionInput(uuid: _uuid.v7())],
    )));
  }

  void setCubit({
    required ContentTextSectionInput input,
  }) {
    final String uuid = input.uuid;
    final newTexts = [...state.currentText.texts];
    final index = newTexts.indexWhere((element) => element.uuid == uuid);
    if (index == -1) return;
    newTexts[index] = input;

    emit(
      ContentStringState.normal(
        currentText: ContentInput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  /// If new pipe has a diferent name, it will be
  /// updated in all the texts.
  void onPipeEdit(Pipe oldPipe, newPipe) {
    final doesNewPipeHasDifferentName =
        oldPipe.mustacheName != newPipe.mustacheName;
    if (!doesNewPipeHasDifferentName) return;

    final newTexts = [...state.currentText.texts];

    final o = oldPipe.mustacheName;
    final n = newPipe.mustacheName;
    int index = -1;
    for (final ContentTextSectionInput text in newTexts) {
      index++;
      newTexts[index] = newTexts[index].copyWith(
        content: text.content //
            .replaceAll(RegExp('(?<={)$o(?=[}.-])'), n),
        uuid: _uuid.v7(),
      );
    }

    emit(ContentStringState.normal(
      currentText: ContentInput.listOfTexts(texts: List.from(newTexts)),
    ));
  }

  void deleteCubit({
    required String uuid,
  }) {
    final newTexts = [...state.currentText.texts];
    newTexts.removeWhere((element) => element.uuid == uuid);

    emit(
      ContentStringState.normal(
        currentText: ContentInput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void addNew() {
    final newTexts = [...state.currentText.texts];

    newTexts.add(ContentTextSectionInput(uuid: _uuid.v7()));

    emit(
      ContentStringState.normal(
        currentText: ContentInput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void removeAt(String uuid) {
    final newTexts = [...state.currentText.texts];

    newTexts.removeWhere((element) => element.uuid == uuid);

    emit(
      ContentStringState.normal(
        currentText: ContentInput.listOfTexts(texts: List.from(newTexts)),
      ),
    );
  }

  void setStateFromOutput(ContentInput output) {
    emit(ContentStringState.normal(currentText: output));
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
