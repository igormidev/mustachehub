part of '../all_variables.dart';

mixin ResetAllDependencies on MainInterationVariables {
  /// Reset all dependencies for a new role of analysis
  void resetAllDependencies() {
    index = -1;

    sortedSegments.clear();
    segments.clear();
    modelsThatCursorIndexIsInsideScope.clear();
    usableVariablesInCurrentContext.clear();
    allModelScopesByMustacheName.clear();

    textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.clear();
    booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.clear();
    modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet.clear();

    openModelDeclarationsWithoutFindedCloseYet.clear();
    openBooleanDeclarationsWithoutFindedCloseYet.clear();
  }
}
