import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/main_interation_variables.dart';
import 'package:text_analyser/src/models/analysed_segment_status.dart';
import 'package:text_analyser/src/models/variable_scope_parent_mapper.dart';
import 'package:text_analyser/src/text_analyser_base.dart';

mixin HandleTextVariables on MainInterationVariables {
  void handleTextVariables() {
    // Root variables are not inside a scope model.
    // There are in the first layer of the variables declaration.
    // For that cases, we don't even have to check if they are valid or not
    // because they don't depend on a scope/context to be used. Can be used globally.
    final isRootTokenIdentifier = varScopeParentMapper.parrentName == null;
    if (isRootTokenIdentifier) {
      segments[index] = AnalysedSegmentStatus.validDeclaration(
        offset: offset,
        segmentText: group.fullMatchText,
      );
    } else {
      final bool dontExistSegmentYet =
          textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet
                  .containsKey(group.content) ==
              false;
      if (dontExistSegmentYet) {
        textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[
            group.content] = [];
      }

      textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet[group.content]
          ?.add(
        TextParentScopeValidationPayload(
          parentMapper: varScopeParentMapper as TextParentMapper,
          findedGroup: group,
          indexInSegment: index,
        ),
      );
    }
  }
}
