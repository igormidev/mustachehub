part of '../../../all_variables.dart';

mixin HandleBooleanVariables on MainInterationVariables {
  void handleBooleanVariables() {
    // Now, we need to now if the boolean has a open and close declaration in somewhere in the text.
    final bool dontExistSegmentYet =
        openBooleanDeclarationsWithoutFindedCloseYet
                .containsKey(group.content) ==
            false;
    if (dontExistSegmentYet) {
      openBooleanDeclarationsWithoutFindedCloseYet[group.content] = [];
    }

    if (isNormalOpenDelimiter || isInverseOpenDelimiter) {
      openBooleanDeclarationsWithoutFindedCloseYet[group.content]?.add(
        OpenBooleanDeclarationPayload(
          parentMapper: varScopeParentMapper as BooleanParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );

      return;
    }

    final List<OpenBooleanDeclarationPayload>? openDeclarations =
        openBooleanDeclarationsWithoutFindedCloseYet[group.content];

    if (openDeclarations == null || openDeclarations.isEmpty) {
      segments[index] =
          AnalysedSegmentStatus.booleanDeclarationCloseWithoutOpen(
        offset: offset,
        segmentText: group.fullMatchText,
      );
    } else {
      final OpenBooleanDeclarationPayload openDeclaration =
          openBooleanDeclarationsWithoutFindedCloseYet[group.content]!
              .removeLast();
      final isRootTokenIdentifier = varScopeParentMapper.parrentName == null;
      if (isRootTokenIdentifier) {
        segments[openDeclaration.indexInSegment] =
            AnalysedSegmentStatus.validDeclaration(
          offset: offset,
          segmentText: openDeclaration.findedGroup.fullMatchText,
        );

        segments[index] = AnalysedSegmentStatus.validDeclaration(
          offset: offset,
          segmentText: group.fullMatchText,
        );
        return;
      }

      final bool dontExistBooleanSegmentYet =
          booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                  .containsKey(group.content) ==
              false;

      if (dontExistBooleanSegmentYet) {
        booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
            group.content] = [];
      }

      final scope = BooleanParentScopeValidationPayload(
        open: OpenBooleanDeclarationPayload(
          parentMapper: openDeclaration.parentMapper,
          findedGroup: openDeclaration.findedGroup,
          indexInSegment: openDeclaration.indexInSegment,
        ),
        close: OpenBooleanDeclarationPayload(
          parentMapper: varScopeParentMapper as BooleanParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );

      booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
              group.content]
          ?.add(scope);
    }
  }
}
