part of '../../all_variables.dart';

mixin ParentScopeValidationPayload {
  /// We will stock here all texts variables that have a parent
  ///
  /// In the end, we will check if the text declaration is
  /// inside a scope that is valid for the text to be used.
  ///
  /// The key is the name of the text variable.
  /// The value is an list of all the declarations of that
  /// text variable throughout the text. Some of them can be
  /// valid, some of them can be invalid (outside the parent
  /// model scope). So we will check one by one.
  final Map<String, List<TextParentScopeValidationPayload>>
      textsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = {};

  /// We will stock here all booleans variables that have a parent
  /// and the open and close declarations are in the correct scope.
  ///
  /// In the end, we will check if the boolean declaration is
  /// inside a scope that is valid for the boolean to be used.
  ///
  /// PS: The open and close declarations need to be in the
  /// same scope, both of them.
  ///
  /// The key is the name of the boolean variable.
  /// The value is an list of all the declarations of that
  /// boolean variable throughout the text. Some of them can be
  /// valid, some of them can be invalid (outside the parent
  /// model scope). So we will check one by one.
  final Map<String, List<BooleanParentScopeValidationPayload>>
      booleansWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = {};

  /// We will stock here all models variables that have a parent
  /// and the open and close declarations are in the correct scope.
  ///
  /// In the end, we will check if the model declaration is
  /// inside a scope that is valid for the model to be used.
  ///
  /// PS: The open and close declarations need to be in the
  /// same scope, both of them.
  ///
  /// The key is the name of the model variable.
  /// The value is an list of all the declarations of that
  /// model variable throughout the text. Some of them can be
  /// valid, some of them can be invalid (outside the parent
  /// model scope). So we will check one by one.
  final List<List<ModelParentScopeValidationPayload>>
      modelsWithParentThatWeDontKnowIfAreInsideTheCorrectScopeYet = [];
}
