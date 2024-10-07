part of '../all_variables.dart';

mixin SetVariablesThatCanBeUsedInCursorIndex on AllVariables {
  void setVariablesThatCanBeUsedInCursorIndex() {
    for (final ModelMapperInfo modelMapper
        in modelsThatCursorIndexIsInsideScope) {
      final ModelParentMapper identifier = modelMapper.modelParentMapper;
      final bool isInverse = modelMapper.isInverse;
      if (isInverse) continue;

      usableVariablesInCurrentContext
          .add(ChoosableVariableImplementations.model(
        variableName: identifier.name,
        modelImplementation: ModelUseImplementations.normalValue(),
      ));
      usableVariablesInCurrentContext
          .add(ChoosableVariableImplementations.model(
        variableName: identifier.name,
        modelImplementation: ModelUseImplementations.invertedValue(),
      ));

      for (final subModelName in identifier.subModelsNames) {
        final isSubModelAlreadyDefined =
            usableVariablesInCurrentContext.any((element) {
          return element.maybeMap(
            model: (value) {
              return value.variableName == subModelName;
            },
            orElse: () => false,
          );
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
            .add(ChoosableVariableImplementations.model(
          variableName: tokenIdentifier.name,
          modelImplementation: ModelUseImplementations.normalValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.model(
          variableName: tokenIdentifier.name,
          modelImplementation: ModelUseImplementations.invertedValue(),
        ));
      }

      for (final choiceName in identifier.choicesNames) {
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.choice(
          variableName: choiceName,
          choiceImplementation: ChoiceUseImplementation.normalValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.choice(
          variableName: choiceName,
          choiceImplementation: ChoiceUseImplementation.invertedValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.choice(
          variableName: choiceName,
          choiceImplementation: ChoiceUseImplementation.textValue(),
        ));
      }

      for (final booleanName in identifier.booleanNames) {
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.boolean(
          variableName: booleanName,
          booleanImplementation: BooleanUseImplementation.invertedValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.boolean(
          variableName: booleanName,
          booleanImplementation: BooleanUseImplementation.normalValue(),
        ));
      }

      for (final textName in identifier.textsNames) {
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.text(
          variableName: textName,
        ));
      }
    }
  }
}
