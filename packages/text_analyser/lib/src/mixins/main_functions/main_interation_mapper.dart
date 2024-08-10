part of '../all_variables.dart';

mixin MainInterationMapper
    on
        AllVariables,
        HandleOnNonMatch,
        HandleTextVariables,
        HandleBooleanVariables,
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
          return handleTextVariables();
        } else if (isBoolean) {
          return handleBooleanVariables();
        } else {
          return handleModelsVariables();
        }
      },
      onNonMatch: handleOnNonMatch,
    );
  }
}
