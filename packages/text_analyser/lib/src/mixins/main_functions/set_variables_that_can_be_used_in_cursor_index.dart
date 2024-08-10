part of '../all_variables.dart';

mixin SetVariablesThatCanBeUsedInCursorIndex on AllVariables {
  void setVariablesThatCanBeUsedInCursorIndex() {
    for (final ModelParentMapper identifier
        in modelsThatCursorIndexIsInsideScope) {
      usableVariablesInCurrentContext
          .add(ChoosableVariableImplementations.model(
        variableName: identifier.name,
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
          booleanImplementation: BooleanUseImplementation.normalValue(),
        ));
        usableVariablesInCurrentContext
            .add(ChoosableVariableImplementations.boolean(
          variableName: booleanName,
          booleanImplementation: BooleanUseImplementation.invertedValue(),
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
