import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/create/presenter/states/manipulation_context_state.dart';

class ManipulationContextCubit extends Cubit<ManipulationContextState> {
  ManipulationContextCubit() : super(ManipulationContextState.initial());
}
