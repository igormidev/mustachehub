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
          model: (model) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.model(
              variableName: model.name,
              modelImplementation: ModelUseImplementations.normalValue(),
            ));
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.model(
              variableName: model.name,
              modelImplementation: ModelUseImplementations.invertedValue(),
            ));
          },
          boolean: (boolean) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.boolean(
              variableName: boolean.name,
              booleanImplementation: BooleanUseImplementation.normalValue(),
            ));
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.boolean(
              variableName: boolean.name,
              booleanImplementation: BooleanUseImplementation.invertedValue(),
            ));
          },
          text: (text) {
            usableVariablesInCurrentContext
                .add(ChoosableVariableImplementations.text(
              variableName: text.name,
            ));
          },
        );
      }
    });
  }
}
