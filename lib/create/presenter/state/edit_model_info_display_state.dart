// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

part 'edit_model_info_display_state.freezed.dart';

@freezed
abstract class EditModelInfoDisplayState with _$EditModelInfoDisplayState {
  factory EditModelInfoDisplayState.normal() = _EditModelInfoDisplayStateNormal;

  factory EditModelInfoDisplayState.withDisplayText({
    required ModelPipe currentModel,
    required String displayText,
    required List<SubModelPath> subModelPaths,
  }) = _EditModelInfoDisplayStateWithDisplayText;
}

class SubModelPath {
  final String name;
  final String pipeIdReference;

  const SubModelPath({
    required this.name,
    required this.pipeIdReference,
  });

  SubModelPath copyWith({
    String? name,
    String? pipeIdReference,
  }) {
    return SubModelPath(
      name: name ?? this.name,
      pipeIdReference: pipeIdReference ?? this.pipeIdReference,
    );
  }
}
