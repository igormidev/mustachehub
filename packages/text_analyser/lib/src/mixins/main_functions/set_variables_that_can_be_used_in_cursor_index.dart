// ignore_for_file: avoid_returning_null_for_void

part of '../all_variables.dart';

mixin SetVariablesThatCanBeUsedInCursorIndex on AllVariables {
  void setVariablesThatCanBeUsedInCursorIndex() {
    for (final ModelMapperInfo modelMapper
        in modelsThatCursorIndexIsInsideScope) {
      final ModelParentMapper identifier = modelMapper.modelParentMapper;
      final bool isInverse = modelMapper.isInverse;
      final identifierName = identifier.name;
      if (isInverse) {
        usableVariablesInCurrentContext
            .removeWhere((element) => switch (element) {
                  FolderStructure<FoldableSelection, FileSelection>() =>
                    element.item.variableName == identifierName,
                  FileStructureOptions<FoldableSelection, FileSelection>() =>
                    false,
                });
        continue;
      }

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

      final variableIdentifierMapper =
          identifierFlatMap[identifierName]! as VariableIdentifierMapperModel;

      final allitems =
          variableIdentifierMapper.structureItems(identifierFlatMap);

      print('before: ${usableVariablesInCurrentContext.length}');
      usableVariablesInCurrentContext
          .removeWhere((element) => switch (element) {
                FolderStructure<FoldableSelection, FileSelection>() =>
                  element.item.variableName == identifierName,
                FileStructureOptions<FoldableSelection, FileSelection>() =>
                  false,
              });
      // final removed = usableVariablesInCurrentContext
      //     .remove(variableIdentifierMapper.structure);
      print('after: ${usableVariablesInCurrentContext.length}');

      usableVariablesInCurrentContext.add(allitems);

      // .add(identifier.structureItems(scopeParentFlatMap));

      //   for (final subModelName in identifier.subModelsNames) {
      //     final isSubModelAlreadyDefined = usableVariablesInCurrentContext.any(
      //         (StructuredDataType<FoldableSelection, FileSelection> element) {
      //       switch (element) {
      //         case FolderStructure<FoldableSelection, FileSelection>():
      //           return element.item.maybeMap(
      //             folderModel: (value) => value.variableName == subModelName,
      //             folderItemsModel: (value) => value.variableName == subModelName,
      //             orElse: () => false,
      //           );
      //         case FileStructureOptions<FoldableSelection, FileSelection>():
      //           return element.item.maybeMap(
      //             fileModelOpenScope: (value) =>
      //                 value.variableName == subModelName,
      //             fileModelInvertedScope: (value) =>
      //                 value.variableName == subModelName,
      //             orElse: () => false,
      //           );
      //       }
      //     });
      //     if (isSubModelAlreadyDefined) {
      //       continue;
      //     }

      //     final VariableScopeParentMapper? tokenIdentifier =
      //         scopeParentFlatMap[subModelName];
      //     if (tokenIdentifier == null || tokenIdentifier is! ModelParentMapper) {
      //       continue;
      //     }

      //     // usableVariablesInCurrentContext
      //     //     .add(tokenIdentifier.structureItems(scopeParentFlatMap));
      //     //
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.model(
      //     //   variableName: tokenIdentifier.name,
      //     //   modelImplementation: ModelUseImplementations.normalValue(),
      //     // ));
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.model(
      //     //   variableName: tokenIdentifier.name,
      //     //   modelImplementation: ModelUseImplementations.invertedValue(),
      //     // ));
      //   // }

      //   // for (final choiceName in identifier.choicesNames) {
      //   //   print('choiceName: $choiceName');
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.choice(
      //     //   variableName: choiceName,
      //     //   choiceImplementation: ChoiceUseImplementation.textValue(),
      //     // ));
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.choice(
      //     //   variableName: choiceName,
      //     //   choiceImplementation: ChoiceUseImplementation.normalValue(),
      //     // ));
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.choice(
      //     //   variableName: choiceName,
      //     //   choiceImplementation: ChoiceUseImplementation.invertedValue(),
      //     // ));
      //   }

      //   // for (final booleanName in identifier.booleanNames) {
      //   //   final boolean = scopeParentFlatMap[booleanName] as BooleanParentMapper?;
      //   //   if (boolean == null) return null;
      //   //   usableVariablesInCurrentContext.add(boolean.structure);
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.boolean(
      //     //   variableName: booleanName,
      //     //   booleanImplementation: BooleanUseImplementation.normalValue(),
      //     // ));
      //     // usableVariablesInCurrentContext
      //     //     .add(ChoosableVariableImplementations.boolean(
      //     //   variableName: booleanName,
      //     //   booleanImplementation: BooleanUseImplementation.invertedValue(),
      //     // ));
      //   // }

      //   // for (final textName in identifier.textsNames) {
      //   //   final text = scopeParentFlatMap[textName] as TextParentMapper?;
      //   //   if (text == null) return null;

      //   //   usableVariablesInCurrentContext.add(text.structure);
      //   // }
    }
  }
}
