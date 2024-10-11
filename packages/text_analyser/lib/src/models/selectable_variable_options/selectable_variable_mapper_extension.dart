import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:text_analyser/text_analyser.dart';

extension ModelParentMapperExt on ModelParentMapper {
  StructureFolder structureItems(
      Map<String, VariableScopeParentMapper> flatMap) {
    return FolderStructure(
      item: FoldableSelection.folderItemsModel(variableName: name),
      children: [
        // Texts
        ...textsNames
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (textName) {
          final text = flatMap[textName] as TextParentMapper?;
          if (text == null) return null;

          return text.structure;
        }).removeNull,

        // Booleans
        ...booleanNames
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (booleanName) {
          final boolean = flatMap[booleanName] as BooleanParentMapper?;
          if (boolean == null) return null;

          return boolean.structure;
        }).removeNull,

        // Sub model's
        ...subModelsNames
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (subModelName) {
          final subModel = flatMap[subModelName] as ModelParentMapper?;
          if (subModel == null) return null;

          return subModel.structureItems(flatMap);
        }).removeNull,

        // Own model
        structure,
      ],
    );
  }

  StructureFolder get structure {
    return FolderStructure(
      item: FoldableSelection.folderModel(variableName: name),
      children: [
        FileStructureOptions(
          item: FileSelection.fileModelOpenScope(
            variableName: name,
          ),
        ),
        FileStructureOptions(
          item: FileSelection.fileModelInvertedScope(
            variableName: name,
          ),
        ),
      ],
    );
  }
}

extension BooleanParentMapperExt on BooleanParentMapper {
  StructureFolder get structure {
    return FolderStructure(
      item: FoldableSelection.folderBoolean(variableName: name),
      children: [
        FileStructureOptions(
          item: FileSelection.fileBooleanOpenScope(
            variableName: name,
          ),
        ),
        FileStructureOptions(
          item: FileSelection.fileBooleanInvertedScope(
            variableName: name,
          ),
        ),
      ],
    );
  }
}

extension TextParentMapperExt on TextParentMapper {
  StructureFolder get structure {
    return FolderStructure(
      item: FoldableSelection.folderText(variableName: name),
      children: [
        FileStructureOptions(
          item: FileSelection.fileTextLiteral(
            variableName: name,
          ),
        ),
        FileStructureOptions(
          item: FileSelection.fileTextOpenScope(
            variableName: name,
          ),
        ),
        FileStructureOptions(
          item: FileSelection.fileTextInvertedScope(
            variableName: name,
          ),
        ),
      ],
    );
  }
}
