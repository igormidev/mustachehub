import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_selection.freezed.dart';
part 'file_selection.g.dart';

@freezed
abstract class FileSelection with _$FileSelection {
  factory FileSelection.fileTextLiteral({
    required String variableName,
  }) = _FileTextLiteral;
  factory FileSelection.fileTextOpenScope({
    required String variableName,
  }) = _FileTextOpenScope;
  factory FileSelection.fileTextInvertedScope({
    required String variableName,
  }) = _FileTextInvertedScope;

  factory FileSelection.fileChoiceLiteral({
    required String variableName,
  }) = _FileChoiceLiteral;
  factory FileSelection.fileChoiceOpenScope({
    required String variableName,
  }) = _FileChoiceOpenScope;
  factory FileSelection.fileChoiceInvertedScope({
    required String variableName,
  }) = _FileChoiceInvertedScope;

  factory FileSelection.fileModelOpenScope({
    required String variableName,
  }) = _FileModelOpenScope;
  factory FileSelection.fileModelInvertedScope({
    required String variableName,
  }) = _FileModelInvertedScope;

  factory FileSelection.fileBooleanOpenScope({
    required String variableName,
  }) = _FileBooleanOpenScope;
  factory FileSelection.fileBooleanInvertedScope({
    required String variableName,
  }) = _FileBooleanInvertedScope;

  factory FileSelection.fromJson(Map<String, dynamic> json) =>
      _$FileSelectionFromJson(json);
}
