part of '../all_variables.dart';

mixin HandleFindedModelScope on MainInterationVariables {
  /// Will set the scope of the model in the [allModelScopesByMustacheName]
  /// Also, if the [indexAtText] is inside the scope, will add the model
  /// to the [modelsThatCursorIndexIsInsideScope]
  void handleFindedModelScope({
    required VariableScopeParentMapper? tokenIdentifier,
    required FindedGroup startFindedGroup,
    required FindedGroup endFindedGroup,
  }) {
    final IdentifierScope scope = IdentifierScope(
      startDeclaration: IdentifierDeclaration(
        start: startFindedGroup.globalStart,
        end: startFindedGroup.globalEnd,
      ),
      endDeclaration: IdentifierDeclaration(
        start: endFindedGroup.globalStart,
        end: endFindedGroup.globalEnd,
      ),
      identifier: endFindedGroup.content,
    );

    final scopesDir = allModelScopesByMustacheName[scope.identifier];
    if (scopesDir == null) {
      allModelScopesByMustacheName[scope.identifier] = [];
    }

    allModelScopesByMustacheName[scope.identifier]?.add(ToAnalyseScope(
      indexInSegment: allModelScopesByMustacheName.keys.length + 1,
      scope: scope,
    ));

    final bool isIndexAtTextWithinScope =
        scope.startDeclaration.end < indexAtText &&
            indexAtText < scope.endDeclaration.start;

    if (isIndexAtTextWithinScope) {
      final isInverse =
          stringHasInvertedPattern(startFindedGroup.fullMatchText);
      modelsThatCursorIndexIsInsideScope.add((
        modelParentMapper: tokenIdentifier as ModelParentMapper,
        isInverse: isInverse,
      ));
    }
  }
}
