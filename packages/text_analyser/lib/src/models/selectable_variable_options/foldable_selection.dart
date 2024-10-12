import 'package:freezed_annotation/freezed_annotation.dart';

part 'foldable_selection.freezed.dart';
part 'foldable_selection.g.dart';

@freezed
abstract class FoldableSelection with _$FoldableSelection {
  factory FoldableSelection.folderText({
    required String variableName,
  }) = _FoldableSelectionFolderText;

  factory FoldableSelection.folderBoolean({
    required String variableName,
  }) = _FoldableSelectionFolderBoolean;

  factory FoldableSelection.folderChoice({
    required String variableName,
  }) = _FoldableSelectionFolderChoice;

  factory FoldableSelection.folderChoiceItems({
    required String variableName,
  }) = _FoldableSelectionFolderChoiceItems;

  factory FoldableSelection.folderItemsModel({
    required String variableName,
  }) = _FoldableSelectionFolderItemsModel;

  factory FoldableSelection.folderModel({
    required String variableName,
  }) = _FoldableSelectionFolderModel;

  factory FoldableSelection.fromJson(Map<String, dynamic> json) =>
      _$FoldableSelectionFromJson(json);
}

//  on VariableIdentifierMapperChoice {
//   StructureFolder get structure {
//     return FolderStructure(
//       item: FoldableSelection.folderChoiceItems(variableName: name),
//       children: [
//         FileStructureOptions(
//           item: FileSelection.fileChoiceLiteral(
//             variableName: name,
//           ),
//         ),
//         ...options.map(
//           (option) => FolderStructure(
//             item: FoldableSelection.folderChoice(
//               variableName: option,
//             ),
//             children: [
//               FileStructureOptions(
//                 item: FileSelection.fileBooleanOpenScope(
//                   variableName: option,
//                 ),
//               ),
//               FileStructureOptions(
//                 item: FileSelection.fileBooleanInvertedScope(
//                   variableName: option,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }