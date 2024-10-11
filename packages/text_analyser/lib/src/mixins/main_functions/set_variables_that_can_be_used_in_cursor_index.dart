// ignore_for_file: avoid_returning_null_for_void

part of '../all_variables.dart';

mixin SetVariablesThatCanBeUsedInCursorIndex on AllVariables {
  void setVariablesThatCanBeUsedInCursorIndex() {
    for (final ModelMapperInfo modelMapper
        in modelsThatCursorIndexIsInsideScope) {
      final ModelParentMapper identifier = modelMapper.modelParentMapper;
      final bool isInverse = modelMapper.isInverse;
      if (isInverse) continue;

      // usableVariablesInCurrentContext
      //     .add(ChoosableVariableImplementations.model(
      //   variableName: identifier.name,
      //   modelImplementation: ModelUseImplementations.normalValue(),
      // ));
      // usableVariablesInCurrentContext
      //     .add(ChoosableVariableImplementations.model(
      //   variableName: identifier.name,
      //   modelImplementation: ModelUseImplementations.invertedValue(),
      // ));
      usableVariablesInCurrentContext.add(identifier.structureItems(flatMap));

      for (final subModelName in identifier.subModelsNames) {
        final isSubModelAlreadyDefined = usableVariablesInCurrentContext.any(
            (StructuredDataType<FoldableSelection, FileSelection> element) {
          switch (element) {
            case FolderStructure<FoldableSelection, FileSelection>():
              return element.item.maybeMap(
                folderModel: (value) => value.variableName == subModelName,
                folderItemsModel: (value) => value.variableName == subModelName,
                orElse: () => false,
              );
            case FileStructureOptions<FoldableSelection, FileSelection>():
              return element.item.maybeMap(
                fileModelOpenScope: (value) =>
                    value.variableName == subModelName,
                fileModelInvertedScope: (value) =>
                    value.variableName == subModelName,
                orElse: () => false,
              );
          }
        });
        if (isSubModelAlreadyDefined) {
          continue;
        }

        final VariableScopeParentMapper? tokenIdentifier =
            flatMap[subModelName];
        if (tokenIdentifier == null || tokenIdentifier is! ModelParentMapper) {
          continue;
        }

        usableVariablesInCurrentContext
            .add(tokenIdentifier.structureItems(flatMap));
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.model(
        //   variableName: tokenIdentifier.name,
        //   modelImplementation: ModelUseImplementations.normalValue(),
        // ));
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.model(
        //   variableName: tokenIdentifier.name,
        //   modelImplementation: ModelUseImplementations.invertedValue(),
        // ));
      }

      for (final choiceName in identifier.choicesNames) {
        print('choiceName: $choiceName');
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.choice(
        //   variableName: choiceName,
        //   choiceImplementation: ChoiceUseImplementation.textValue(),
        // ));
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.choice(
        //   variableName: choiceName,
        //   choiceImplementation: ChoiceUseImplementation.normalValue(),
        // ));
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.choice(
        //   variableName: choiceName,
        //   choiceImplementation: ChoiceUseImplementation.invertedValue(),
        // ));
      }

      for (final booleanName in identifier.booleanNames) {
        final boolean = flatMap[booleanName] as BooleanParentMapper?;
        if (boolean == null) return null;
        usableVariablesInCurrentContext.add(boolean.structure);
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.boolean(
        //   variableName: booleanName,
        //   booleanImplementation: BooleanUseImplementation.normalValue(),
        // ));
        // usableVariablesInCurrentContext
        //     .add(ChoosableVariableImplementations.boolean(
        //   variableName: booleanName,
        //   booleanImplementation: BooleanUseImplementation.invertedValue(),
        // ));
      }

      for (final textName in identifier.textsNames) {
        final text = flatMap[textName] as TextParentMapper?;
        if (text == null) return null;

        usableVariablesInCurrentContext.add(text.structure);
      }
    }
  }
}
