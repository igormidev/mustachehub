part of '../../all_variables.dart';

mixin OpenDeclarationsWithoutFindedClose {
  /// These are the open model declarations finded in the text
  /// that don't have a close declaration yet. In the main interation,
  /// for each close declaration it will check here if there is a
  /// corresponding open declaration for him. If not, we can declare it
  /// as a close wihout open declaration. If yes, it is a valid declaration.
  /// And if after the main iteration there are still open declarations
  /// here, we can declare them as open without close declaration.
  ///
  /// The key is the name of the model variable.
  /// The value is a list of all the open declarations of that
  /// model variable declarations throughout the text that don't have
  /// a close declaration yet.
  final Map<String, List<OpenModelDeclarationPayload>>
      openModelDeclarationsWithoutFindedCloseYet = {};

  /// These are the open booleans declarations finded in the text
  /// that don't have a close declaration yet. In the main interation,
  /// for each close declaration it will check here if there is a
  /// corresponding open declaration for him. If not, we can declare it
  /// as a close wihout open declaration. If yes, it is a valid declaration.
  /// And if after the main iteration there are still open declarations
  /// here, we can declare them as open without close declaration.
  ///
  /// The key is the name of the boolean variable.
  /// The value is a list of all the open declarations of that
  /// boolean variable declarations throughout the text that don't have
  /// a close declaration yet.
  final Map<String, List<OpenBooleanDeclarationPayload>>
      openBooleanDeclarationsWithoutFindedCloseYet = {};
}
