import 'package:cursor_autocomplete_options/cursor_autocomplete_options.dart';
import 'package:enchanted_collection/enchanted_collection.dart';
import 'package:text_analyser/src/models/selectable_variable_options/selectable_variable_mapper_extension.dart';
import 'package:text_analyser/src/models/variable_scope_parent_mapper.dart';
import 'package:text_analyser/text_analyser.dart';
import 'package:enchanted_regex/enchanted_regex.dart';
part 'main_functions/handle_open_variables_without_close_as_invalid_segment/set_open_booleans_with_no_close_as_invalid_segments.dart';
part 'main_functions/handle_open_variables_without_close_as_invalid_segment/set_open_models_with_no_close_as_invalid_segments.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/has_delimitter_but_is_an_variable_without_scope.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/is_uncatologed_variable.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/main_interation_variables.dart';
part 'variables/text_analyser_input_variables.dart';
part 'variables/info_payloads/open_declarations_without_finded_close.dart';
part 'variables/info_payloads/parent_scope_validation_payload.dart';
part 'main_functions/main_interation_mapper.dart';
part 'main_functions/set_root_variables.dart';
part 'auxiliary_functions/handle_finded_model_scope.dart';
part 'auxiliary_functions/garantee_all_segments_are_correctly_sorted.dart';
part 'auxiliary_functions/reset_all_dependencies.dart';
part 'auxiliary_functions/is_within_text_bounds.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_on_non_match.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_text_variables.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_boolean_variables.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_choice_variables.dart';
part 'main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_model_variables.dart';
part 'main_functions/set_variables_that_can_be_used_in_cursor_index.dart';
part 'main_functions/set_if_variables_are_used_inside_patern_scope/set_if_text_segment_is_inside_patern_scope.dart';
part 'main_functions/set_if_variables_are_used_inside_patern_scope/set_if_boolean_segment_is_inside_patern_scope.dart';
part 'main_functions/set_if_variables_are_used_inside_patern_scope/set_if_model_segment_is_inside_patern_scope.dart';

mixin AllVariables
    on
        TextAnalyserInputVariables,
        ParentScopeValidationPayload,
        OpenDeclarationsWithoutFindedClose {
  /// The regular expression to find the mustache template variables.
  final RegExp regExp = RegExp(r'{{[\^#\/]?(?<name>[a-zA-Z\.-]+?)}}');

  /// The key represents the index of the segment in the text.
  /// That is, each [input.forEachNamedGroup] iteration will
  /// increment the index by one. That index is used to identify
  /// the order that each segment apears in the text.
  ///
  /// The value is the segment itself.
  ///
  /// The index should be in increasing order (1, 2, 3, 4, ..., n)
  ///
  /// This value will be returned in the [AnalysedResponse] in the final
  ///
  /// We need to separate the segments and re-group them again because
  /// calculations will be done to check if the segments are valid or not.
  final Map<int, AnalysedSegmentStatus> segments = {};

  /// This list contains all model scopes that the text cursor is inside.
  ///
  /// Later on we will use this info to check if a variable parrent
  final Set<ModelMapperInfo> modelsThatCursorIndexIsInsideScope = {};

  /// Variables that can be used in the current context the mouse cursor is.
  ///
  /// This includes all root variables and the variables inside a model that
  /// the textfield cursor is inside that model scole.
  final Set<StructureFolder> usableVariablesInCurrentContext = {};

  /// All the model scopes that exists in the [input].
  /// Not necessary only the models that the cursor
  /// is inside (that is [modelsThatCursorIndexIsInsideScope]) variable
  ///
  /// The key is the name of the model [mustacheName].
  /// The value is a list of all the scopes that model has that name.
  final Map<String, List<ToAnalyseScope>> allModelScopesByMustacheName = {};

  List<AnalysedSegmentStatus> sortedSegments = [];
}

typedef ModelMapperInfo = ({
  ModelParentMapper modelParentMapper,
  bool isInverse
});
