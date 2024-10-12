import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:text_analyser/text_analyser.dart';

extension ModelParentMapperExt on VariableIdentifierMapperModel {
  StructureFolder structureItems(
    Map<String, VariableIdentifierMapper> flatMap,
  ) {
    return FolderStructure(
      item: FoldableSelection.folderItemsModel(variableName: name),
      children: [
        // Texts
        ...textsChildren
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (textName) {
          final text = flatMap[textName.name] as VariableIdentifierMapperText?;
          if (text == null) return null;

          return text.structure;
        }).removeNull,

        // Booleans
        ...booleansChildren
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (booleanName) {
          final boolean =
              flatMap[booleanName.name] as VariableIdentifierMapperBoolean?;
          if (boolean == null) return null;

          return boolean.structure;
        }).removeNull,

        // Choices
        ...choicesChildren
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (choiceName) {
          final choice =
              flatMap[choiceName.name] as VariableIdentifierMapperChoice?;
          if (choice == null) return null;

          return choice.structure;
        }).removeNull,

        // Sub model's
        ...subModelsChildren
            .map<StructuredDataType<FoldableSelection, FileSelection>?>(
                (subModelName) {
          final subModel =
              flatMap[subModelName.name] as VariableIdentifierMapperModel?;
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

extension ChoiceIdentifierMapperExt on VariableIdentifierMapperChoice {
  StructureFolder get structure {
    return FolderStructure(
      item: FoldableSelection.folderChoiceItems(variableName: name),
      children: [
        FileStructureOptions(
          item: FileSelection.fileChoiceLiteral(
            variableName: name,
          ),
        ),
        ...options.map(
          (option) => FolderStructure(
            item: FoldableSelection.folderChoice(
              variableName: option,
            ),
            children: [
              FileStructureOptions(
                item: FileSelection.fileChoiceOpenScope(
                  variableName: '$name.$option',
                ),
              ),
              FileStructureOptions(
                item: FileSelection.fileChoiceInvertedScope(
                  variableName: '$name.$option',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

extension BooleanIdentifierMapperExt on VariableIdentifierMapperBoolean {
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

extension TextIdentifierMapperExt on VariableIdentifierMapperText {
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
