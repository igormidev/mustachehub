import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/presenter/state/edit_model_info_display_state.dart';

class EditModelInfoDisplayCubit extends Cubit<EditModelInfoDisplayState> {
  final TokenIdentifierTextDisplayAdapter _toDisplayAdapter;
  EditModelInfoDisplayCubit()
      : _toDisplayAdapter = TokenIdentifierTextDisplayAdapter(),
        super(EditModelInfoDisplayState.normal());

  void startEditingInfo(ModelPipe pipe) {
    emit(EditModelInfoDisplayState.withDisplayText(
      subModelPaths: [],
      displayText: pipe.isEmpty()
          ? ''
          : _toDisplayAdapter.toDisplayText(
              textPipes: pipe.textPipes,
              booleanPipes: pipe.booleanPipes,
              modelPipes: pipe.modelPipes,
            ),
      currentModel: pipe,
    ));
  }

  void stopEditingInfo() {
    emit(EditModelInfoDisplayState.normal());
  }

  void updatePipeModeNamelWithId({
    required String newName,
    required String id,
  }) {
    ModelPipe? model = state.mapOrNull(
      withDisplayText: (val) => val.currentModel,
    );
    if (model == null) return;

    ModelPipe? newModel;
    if (model.pipeId == id) {
      newModel = model.copyWith(
        name: newName,
      );
    } else {
      newModel = _recursiveUpdatePipeModeNamelWithId(
        model: model,
        newName: newName,
        id: id,
      );
    }

    if (newModel == null) return;

    emit(EditModelInfoDisplayState.withDisplayText(
      displayText: _toDisplayAdapter.toDisplayText(
        textPipes: newModel.textPipes,
        booleanPipes: newModel.booleanPipes,
        modelPipes: newModel.modelPipes,
      ),
      currentModel: newModel,
      subModelPaths: [],
    ));
  }

  ModelPipe? _recursiveUpdatePipeModeNamelWithId({
    required ModelPipe model,
    required String newName,
    required String id,
  }) {
    if (model.pipeId == id) {
      return model.copyWith(
        name: newName,
      );
    } else {
      for (final subModel in model.modelPipes) {
        final result = _recursiveUpdatePipeModeNamelWithId(
          model: subModel,
          newName: newName,
          id: id,
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

  void updatePipes<T extends Pipe>({
    required String pipeId,
    required List<T> pipes,
  }) {
    ModelPipe? model = state.mapOrNull(
      withDisplayText: (val) => val.currentModel,
    );
    if (model == null) return;

    bool didAddedPipeToParentName = false;
    if (model.pipeId == pipeId) {
      if (T == TextPipe) {
        model = model.copyWith(
          textPipes: pipes as List<TextPipe>,
        );
      } else if (T == BooleanPipe) {
        model = model.copyWith(
          booleanPipes: pipes as List<BooleanPipe>,
        );
      } else if (T == ModelPipe) {
        model = model.copyWith(
          modelPipes: pipes as List<ModelPipe>,
        );
      }
    } else {
      for (final subModel in model.modelPipes) {
        final newModel = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          pipeId: pipeId,
          pipes: pipes,
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

  ModelPipe? _recursiveAddWhereParentNameIsNotNull<T extends Pipe>({
    required ModelPipe model,
    required String pipeId,
    required List<T> pipes,
  }) {
    if (model.pipeId == pipeId) {
      if (T == TextPipe) {
        model = model.copyWith(
          textPipes: pipes as List<TextPipe>,
        );
      } else if (T == BooleanPipe) {
        model = model.copyWith(
          booleanPipes: pipes as List<BooleanPipe>,
        );
      } else if (T == ModelPipe) {
        model = model.copyWith(
          modelPipes: pipes as List<ModelPipe>,
        );
      }
      return model;
    } else {
      for (final subModel in model.modelPipes) {
        final result = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          pipeId: pipeId,
          pipes: pipes,
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
