import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_flatmap_adapter.dart';
import 'package:mustachehub/create/presenter/states/variables_state.dart';

class VariablesCubit extends HydratedCubit<VariablesState> {
  final TokenIdentifierFlatMapAdapter _tokenIdentifierFlatMapAdapter;

  VariablesCubit({
    required TokenIdentifierFlatMapAdapter tokenIdentifierFlatMapAdapter,
  })  : _tokenIdentifierFlatMapAdapter = tokenIdentifierFlatMapAdapter,
        super(const VariablesState(
          flatMap: {},
          textPipes: [],
          booleanPipes: [],
          modelPipes: [],
        ));

  void updateTextVariables({
    required List<TextPipe> textPipes,
  }) {
    final flatMap = _tokenIdentifierFlatMapAdapter.toFlatMap(
      textPipes: textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: state.modelPipes,
    );
    emit(VariablesState(
      flatMap: flatMap,
      textPipes: textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateBooleanVariables({
    required List<BooleanPipe> booleanPipes,
  }) {
    final flatMap = _tokenIdentifierFlatMapAdapter.toFlatMap(
      textPipes: state.textPipes,
      booleanPipes: booleanPipes,
      modelPipes: state.modelPipes,
    );
    emit(VariablesState(
      flatMap: flatMap,
      textPipes: state.textPipes,
      booleanPipes: booleanPipes,
      modelPipes: state.modelPipes,
    ));
  }

  void updateModelVariables({
    required List<ModelPipe> modelPipes,
  }) {
    final flatMap = _tokenIdentifierFlatMapAdapter.toFlatMap(
      textPipes: state.textPipes,
      booleanPipes: state.booleanPipes,
      modelPipes: modelPipes,
    );
    emit(VariablesState(
      flatMap: flatMap,
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
    } catch (e) {
      // } catch (e, s) {
      // log(e.toString(), stackTrace: s);
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(VariablesState state) {
    return state.toMap();
  }
}
