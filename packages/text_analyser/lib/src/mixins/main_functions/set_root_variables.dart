part of '../all_variables.dart';

mixin SetRootVariables on AllVariables {
  /// By default, all root variables are usable in the current context.
  ///
  /// Thats because they don't need to be in a scope since they are
  /// root/global variables that can be used in anyplace in the input.
  void setAllRootVariablesAsUsableInCurrentContext() {
    flatMap.forEach((key, value) {
      if (value.parrentName == null) {
        value.map(
          model: (ModelParentMapper model) {
            usableVariablesInCurrentContext.add(model.structureItems(flatMap));
          },
          boolean: (BooleanParentMapper boolean) {
            usableVariablesInCurrentContext.add(boolean.structure);
          },
          text: (TextParentMapper text) {
            usableVariablesInCurrentContext.add(text.structure);
          },
        );
      }
    });
  }
}
