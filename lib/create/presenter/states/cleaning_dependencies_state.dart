import 'package:freezed_annotation/freezed_annotation.dart';

part 'cleaning_dependencies_state.freezed.dart';
part 'cleaning_dependencies_state.g.dart';

@freezed
abstract class CleaningDependenciesState with _$CleaningDependenciesState {
  factory CleaningDependenciesState.normal() = _CleaningDependenciesStateNormal;
  factory CleaningDependenciesState.cleaningDependencies() =
      _CleaningDependenciesStateCleaningDependenciesLoading;
  factory CleaningDependenciesState.endClean() =
      _CleaningDependenciesStateEndClean;
  factory CleaningDependenciesState.fromJson(Map<String, dynamic> json) =>
      _$CleaningDependenciesStateFromJson(json);
}
