part of '../../../all_variables.dart';

mixin HandleChoiceVariables on MainInterationVariables, HandleFindedModelScope {
  void handleChoicesVariables() {
    final bool dontExistSegmentYet = openChoiceDeclarationsWithoutFindedCloseYet
            .containsKey(group.content) ==
        false;

    if (dontExistSegmentYet) {
      openChoiceDeclarationsWithoutFindedCloseYet[group.content] = [];
    }

    if (isNormalOpenDelimiter || isInverseOpenDelimiter) {
      openChoiceDeclarationsWithoutFindedCloseYet[group.content]?.add(
        OpenChoiceDeclarationPayload(
          parentMapper: varScopeParentMapper as ChoiceParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );

      return;
    }

    final List<OpenChoiceDeclarationPayload>? openDeclarations =
        openChoiceDeclarationsWithoutFindedCloseYet[group.content];

    if (openDeclarations == null || openDeclarations.isEmpty) {
      segments[index] = AnalysedSegmentStatus.choiceDeclarationCloseWithoutOpen(
        offset: offset,
        segmentText: group.fullMatchText,
      );
    } else {
      final OpenChoiceDeclarationPayload openDeclaration =
          openChoiceDeclarationsWithoutFindedCloseYet[group.content]!
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

      final bool dontExistChoiceSegmentYet =
          choicesWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                  .containsKey(group.content) ==
              false;

      if (dontExistChoiceSegmentYet) {
        choicesWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
            group.content] = [];
      }

      final scope = ChoiceParentScopeValidationPayload(
        open: OpenChoiceDeclarationPayload(
          parentMapper: openDeclaration.parentMapper,
          findedGroup: openDeclaration.findedGroup,
          indexInSegment: openDeclaration.indexInSegment,
        ),
        close: OpenChoiceDeclarationPayload(
          parentMapper: varScopeParentMapper as ChoiceParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );

      choicesWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
              group.content]!
          .add(scope);
    }
  }
}
