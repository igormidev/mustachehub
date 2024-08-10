part of '../../../all_variables.dart';

mixin HandleModelVariables on MainInterationVariables, HandleFindedModelScope {
  void handleModelsVariables() {
    // Now, we need to now if the model has a open and close declaration in somewhere in the text.
    if (openModelDeclarationsWithoutFindedCloseYet.containsKey(group.content) ==
        false) {
      openModelDeclarationsWithoutFindedCloseYet[group.content] = [];
    }

    if (isNormalOpenDelimiter) {
      openModelDeclarationsWithoutFindedCloseYet[group.content]?.add(
        OpenModelDeclarationPayload(
          parentMapper: varScopeParentMapper as ModelParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );

      return;
    } else {
      final List<OpenModelDeclarationPayload>? openDeclarations =
          openModelDeclarationsWithoutFindedCloseYet[group.content];

      if (openDeclarations == null || openDeclarations.isEmpty) {
        segments[index] =
            AnalysedSegmentStatus.modelDeclarationCloseWithoutOpen(
          offset: offset,
          segmentText: group.fullMatchText,
        );
      }

      final OpenModelDeclarationPayload openDeclaration =
          openModelDeclarationsWithoutFindedCloseYet[group.content]!
              .removeLast();

      if (varScopeParentMapper.parrentName == null) {
        segments[index] = AnalysedSegmentStatus.validDeclaration(
          offset: offset,
          segmentText: group.fullMatchText,
        );

        segments[openDeclaration.indexInSegment] =
            AnalysedSegmentStatus.validDeclaration(
          offset: TextOffset(
            start: openDeclaration.findedGroup.globalStart,
            end: openDeclaration.findedGroup.globalEnd,
          ),
          segmentText: openDeclaration.findedGroup.fullMatchText,
        );
        handleFindedModelScope(
          tokenIdentifier: varScopeParentMapper,
          startFindedGroup: openDeclaration.findedGroup,
          endFindedGroup: group,
        );
      } else {
        final cluster = ModelParentScopeValidationPayload(
          open: openDeclaration,
          close: OpenModelDeclarationPayload(
            parentMapper: varScopeParentMapper as ModelParentMapper,
            findedGroup: group,
            indexInSegment: index,
          ),
        );
        final int segmentIndex =
            modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                .indexWhere((element) =>
                    element.isNotEmpty &&
                    element.first.open.findedGroup.content == group.content);

        final bool dontExistSegmentYet = segmentIndex == -1;

        if (dontExistSegmentYet) {
          modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
              .add([cluster]);
        } else {
          modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
                  segmentIndex]
              .add(cluster);
        }
      }
    }
  }
}
