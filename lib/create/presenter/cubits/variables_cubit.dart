import 'dart:developer';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/presenter/state/variables_state.dart';

class VariablesCubit extends HydratedCubit<VariablesState> {
  VariablesCubit()
      : super(const VariablesState(
          textPipes: [],
          booleanPipes: [],
          modelPipes: [],
        ));

  void updateTextVariables({
    required List<TextPipe> textPipes,
  }) {
    emit(VariablesState(
      textPipes: textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateBooleanVariables({
    required List<BooleanPipe> booleanPipes,
  }) {
    emit(VariablesState(
      textPipes: state.textPipes,
      booleanPipes: booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateModelVariables({
    required List<ModelPipe> modelPipes,
  }) {
    emit(VariablesState(
      textPipes: state.textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: modelPipes,
    ));
  }

  @override
  VariablesState? fromJson(Map<String, dynamic> json) {
    try {
      final jsonmap = VariablesState.fromMap(json);
      return jsonmap;
    } catch (e, s) {
      log(e.toString(), stackTrace: s);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(VariablesState state) {
    return state.toMap();
  }
}
