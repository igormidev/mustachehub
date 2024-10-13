part of '../all_variables.dart';

mixin SetRootVariables on AllVariables {
  /// By default, all root variables are usable in the current context.
  ///
  /// Thats because they don't need to be in a scope since they are
  /// root/global variables that can be used in anyplace in the input.
  void setAllRootVariablesAsUsableInCurrentContext() {
    // scopeParentFlatMap.forEach((key, value) {
    identifierFlatMap.forEach((key, VariableIdentifierMapper value) {
      if (value.parrentName == null) {
        value.map(
          model: (VariableIdentifierMapperModel model) {
            usableVariablesInCurrentContext.add(model.structure);
          },
          choice: (VariableIdentifierMapperChoice choice) {
            usableVariablesInCurrentContext.add(choice.structure);
          },
          boolean: (VariableIdentifierMapperBoolean boolean) {
            usableVariablesInCurrentContext.add(boolean.structure);
          },
          text: (VariableIdentifierMapperText text) {
            usableVariablesInCurrentContext.add(text.structure);
          },
        );
      }
    });
  }
}
