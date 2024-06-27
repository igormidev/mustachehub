import 'package:freezed_annotation/freezed_annotation.dart';

part 'manipulation_context_state.freezed.dart';
part 'manipulation_context_state.g.dart';

@freezed
abstract class ManipulationContextState with _$ManipulationContextState {
  factory ManipulationContextState.initial() = _ManipulationContextStateInitial;
  factory ManipulationContextState.creating() =
      _ManipulationContextStateCreating;
  factory ManipulationContextState.editing() = _ManipulationContextStateEditing;

  factory ManipulationContextState.fromJson(Map<String, dynamic> json) =>
      _$ManipulationContextStateFromJson(json);
}
