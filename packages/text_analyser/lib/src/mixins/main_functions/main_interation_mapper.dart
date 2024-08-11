part of '../all_variables.dart';

mixin MainInterationMapper
    on
        AllVariables,
        HandleOnNonMatch,
        HandleTextVariables,
        HandleBooleanVariables,
        HandleChoiceVariables,
        HandleModelVariables,
        IsUncatologedVariable,
        HasDelimitterButIsAnVariableWithoutScope,
        MainInterationVariables,
        HandleFindedModelScope {
  void mapAllSegmentsAndVariables() {
    /// The main interation to map all variables
    input.forEachNamedGroup(
      regExp,
      willContainBeforeAndAfterContentAsNonMatch: false,
      onMatch: (FindedGroup findedGroup) {
        index++;
        group = findedGroup;

        final isUncatalogedVar = handleUncatologedVariable();
        if (isUncatalogedVar) {
          return;
        }

        final hasDellimiterButIsAnVariableWithoutScope =
            handleVariableThatHasDelimitterButIsAnVariableWihoutScope();
        if (hasDellimiterButIsAnVariableWithoutScope) {
          return;
        }

        if (isText) {
          return handleTextsVariables();
        } else if (isBoolean) {
          return handleBooleansVariables();
          // } else if (isChoice) {
          //   return handleChoicesVariables();
        } else {
          return handleModelsVariables();
        }
      },
      onNonMatch: handleOnNonMatch,
    );
  }
}
