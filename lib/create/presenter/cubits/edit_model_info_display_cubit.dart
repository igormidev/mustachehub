import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/create/data/adapters/token_identifier_text_display_adapter.dart';
import 'package:mustachehub/create/presenter/state/edit_model_info_display_state.dart';

class EditModelInfoDisplayCubit extends Cubit<EditModelInfoDisplayState> {
  final TokenIdentifierTextDisplayAdapter _toDisplayAdapter;
  EditModelInfoDisplayCubit()
      : _toDisplayAdapter = TokenIdentifierTextDisplayAdapter(),
        super(EditModelInfoDisplayState.normal());

  void updateDisplayText(ModelPipe pipe) {
    final displayText = _toDisplayAdapter.toDisplayText(
      textPipes: pipe.textPipes,
      booleanPipes: pipe.booleanPipes,
      modelPipes: pipe.modelPipes,
    );

    emit(EditModelInfoDisplayState.withDisplayText(displayText: displayText));
  }
}
