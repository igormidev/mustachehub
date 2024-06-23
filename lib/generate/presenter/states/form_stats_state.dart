import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_stats_state.freezed.dart';
part 'form_stats_state.g.dart';

@freezed
abstract class FormStatsState with _$FormStatsState {
  factory FormStatsState.normal({
    required int? textGridSize,
  }) = _FormStatsState;

  factory FormStatsState.fromJson(Map<String, dynamic> json) =>
      _$FormStatsStateFromJson(json);
}
