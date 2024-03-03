import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/presenter/state/edit_model_info_display_state.dart';

class EditModelInfoDisplayCubit extends Cubit<EditModelInfoDisplayState> {
  final TokenIdentifierTextDisplayAdapter _toDisplayAdapter;
  EditModelInfoDisplayCubit()
      : _toDisplayAdapter = TokenIdentifierTextDisplayAdapter(),
        super(EditModelInfoDisplayState.normal());

  void startEditingInfo() {
    emit(EditModelInfoDisplayState.withDisplayText(
      subModelPaths: [],
      displayText: '',
      currentModel: ModelPipe.emptyPlaceholder(),
    ));
  }

  void stopEditingInfo() {
    emit(EditModelInfoDisplayState.normal());
  }

  void removeLastSubModelPath() {
    emit(state.map(
      withDisplayText: (val) => val.copyWith(
        subModelPaths: val.subModelPaths.sublist(
          0,
          val.subModelPaths.length - 1,
        ),
      ),
      normal: (s) => s,
    ));
  }

  void addNewSubModelPath(String newPath) {
    emit(state.map(
      withDisplayText: (val) => val.copyWith(
        subModelPaths: [...val.subModelPaths, newPath],
      ),
      normal: (s) => s,
    ));
  }

  void addPipe(String? parentName, Pipe pipe) {
    ModelPipe? model = state.mapOrNull(
      withDisplayText: (val) => val.currentModel,
    );
    if (model == null) return;

    bool didAddedPipeToParentName = false;
    if (parentName == null) {
      if (pipe is TextPipe) {
        model.textPipes.add(pipe);
        didAddedPipeToParentName = true;
      } else if (pipe is BooleanPipe) {
        model.booleanPipes.add(pipe);
        didAddedPipeToParentName = true;
      } else if (pipe is ModelPipe) {
        model.modelPipes.add(pipe);
        didAddedPipeToParentName = true;
      }
    } else {
      for (final subModel in model.modelPipes) {
        final newModel = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          parentName: parentName,
          pipe: pipe,
        );
        if (newModel != null) {
          model = newModel;
          didAddedPipeToParentName = true;
          break;
        }
      }
    }

    if (model == null || didAddedPipeToParentName) return;

    emit(EditModelInfoDisplayState.withDisplayText(
      displayText: _toDisplayAdapter.toDisplayText(
        textPipes: model.textPipes,
        booleanPipes: model.booleanPipes,
        modelPipes: model.modelPipes,
      ),
      currentModel: model,
      subModelPaths: [],
    ));
  }

  ModelPipe? _recursiveAddWhereParentNameIsNotNull({
    required ModelPipe model,
    required String parentName,
    required Pipe pipe,
  }) {
    if (model.mustacheName == parentName) {
      if (pipe is TextPipe) {
        model.textPipes.add(pipe);
      } else if (pipe is BooleanPipe) {
        model.booleanPipes.add(pipe);
      } else if (pipe is ModelPipe) {
        model.modelPipes.add(pipe);
      }
      return model;
    } else {
      for (final subModel in model.modelPipes) {
        final result = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          parentName: parentName,
          pipe: pipe,
        );
        final didFindParentName = result != null;
        if (didFindParentName) {
          return result;
        } else {
          continue;
        }
      }
    }

    return null;
  }
}
