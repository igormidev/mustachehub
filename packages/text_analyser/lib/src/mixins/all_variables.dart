import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/handle_variables/handle_text_variables.dart';
import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/has_delimitter_but_is_an_variable_without_scope.dart';
import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/is_uncatologed_variable.dart';
import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/main_interation_variables.dart';
import 'package:text_analyser/src/mixins/main_functions/main_interation_mapper_auxiliar_functions/set_initial_variables.dart';
import 'package:text_analyser/text_analyser.dart';
import 'package:enchanted_regex/enchanted_regex.dart';

part 'variables/text_analyser_input_variables.dart';
part 'variables/info_payloads/open_declarations_without_finded_close.dart';
part 'variables/info_payloads/parent_scope_validation_payload.dart';
part 'main_functions/main_interation_mapper.dart';
part 'auxiliary_functions/handle_finded_model_scope.dart';
part 'auxiliary_functions/is_within_text_bounds.dart';

mixin AllVariables
    on
        TextAnalyserInputVariables,
        ParentScopeValidationPayload,
        OpenDeclarationsWithoutFindedClose {
  /// The regular expression to find the mustache template variables.
  final RegExp regExp = RegExp(r'{{[\^#\/]?(?<name>[a-zA-Z]+?)}}');

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
  final Set<ModelParentMapper> modelsThatCursorIndexIsInsideScope = {};

  /// Variables that can be used in the current context the mouse cursor is.
  ///
  /// This includes all root variables and the variables inside a model that
  /// the textfield cursor is inside that model scole.
  final Set<ChoosableVariableImplementations> usableVariablesInCurrentContext =
      {};

  /// All the model scopes that exists in the [input].
  /// Not necessary only the models that the cursor
  /// is inside (that is [modelsThatCursorIndexIsInsideScope]) variable
  ///
  /// The key is the name of the model [mustacheName].
  /// The value is a list of all the scopes that model has that name.
  final Map<String, List<ToAnalyseScope>> allModelScopesByMustacheName = {};
}
