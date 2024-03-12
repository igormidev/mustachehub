import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mason/mason.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/presenter/mixins/default_id_caster.dart';
import 'package:mustachehub/create/presenter/state/edit_model_info_display_state.dart';

class EditModelInfoDisplayCubit extends Cubit<EditModelInfoDisplayState>
    with DefaultIdCaster {
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

    bool didAddedPipeToParentName = false;

    if (model.pipeId == id) {
      model.name = newName;
      didAddedPipeToParentName = true;
    } else {
      didAddedPipeToParentName = _recursiveUpdatePipeModeNamelWithId(
        model: model,
        newName: newName,
        id: id,
      );
    }

    if (didAddedPipeToParentName == false) return;
    final textPipe = model.isEmpty()
        ? ''
        : _toDisplayAdapter.toDisplayText(
            textPipes: model.textPipes,
            booleanPipes: model.booleanPipes,
            modelPipes: model.modelPipes,
          );

    emit(EditModelInfoDisplayState.withDisplayText(
        displayText: textPipe,
        currentModel: model.copyWith(),
        subModelPaths: state.mapOrNull(
              withDisplayText: (val) => val.subModelPaths,
            ) ??
            []));
  }

  bool _recursiveUpdatePipeModeNamelWithId({
    required ModelPipe model,
    required String newName,
    required String id,
  }) {
    if (model.pipeId == id) {
      model.name = newName;
      model.mustacheName =
          tryValidCast(newName)?.camelCase ?? newName.camelCase;

      return true;
    } else {
      for (final subModel in model.modelPipes) {
        final didFindParentName = _recursiveUpdatePipeModeNamelWithId(
          model: subModel,
          newName: newName,
          id: id,
        );
        if (didFindParentName) {
          return didFindParentName;
        } else {
          continue;
        }
      }
    }

    return false;
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
        model.textPipes = pipes as List<TextPipe>;
      } else if (T == BooleanPipe) {
        model.booleanPipes = pipes as List<BooleanPipe>;
      } else if (T == ModelPipe) {
        model.modelPipes = pipes as List<ModelPipe>;
      }
      didAddedPipeToParentName = true;
    } else {
      for (final subModel in model.modelPipes) {
        final didFindParentName = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          pipeId: pipeId,
          pipes: pipes,
        );
        if (didFindParentName) {
          didAddedPipeToParentName = didFindParentName;
          break;
        }
      }
    }

    if (didAddedPipeToParentName == false) return;

    emit(EditModelInfoDisplayState.withDisplayText(
        displayText: model.isEmpty()
            ? ''
            : _toDisplayAdapter.toDisplayText(
                textPipes: model.textPipes,
                booleanPipes: model.booleanPipes,
                modelPipes: model.modelPipes,
              ),
        currentModel: model.copyWith(),
        subModelPaths: state.mapOrNull(
              withDisplayText: (val) => val.subModelPaths,
            ) ??
            []));
  }

  bool _recursiveAddWhereParentNameIsNotNull<T extends Pipe>({
    required ModelPipe model,
    required String pipeId,
    required List<T> pipes,
  }) {
    if (model.pipeId == pipeId) {
      if (T == TextPipe) {
        model.textPipes = pipes as List<TextPipe>;
      } else if (T == BooleanPipe) {
        model.booleanPipes = pipes as List<BooleanPipe>;
      } else if (T == ModelPipe) {
        model.modelPipes = pipes as List<ModelPipe>;
      }
      return true;
    } else {
      for (final subModel in model.modelPipes) {
        final didFindParentName = _recursiveAddWhereParentNameIsNotNull(
          model: subModel,
          pipeId: pipeId,
          pipes: pipes,
        );
        if (didFindParentName) {
          return didFindParentName;
        } else {
          continue;
        }
      }
    }

    return false;
  }
}
