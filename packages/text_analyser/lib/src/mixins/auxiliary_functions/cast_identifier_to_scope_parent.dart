import 'package:text_analyser/src/models/variable_identifier_mapper.dart';
import 'package:text_analyser/src/models/variable_scope_parent_mapper.dart';
import 'package:text_analyser/text_analyser.dart';

// extension VariableIdentifierMapperExt on VariableIdentifierMapper {
//   VariableScopeParentMapper get toScopeParent {
//     return
//   }
// }

extension MapScopwExt on Map<String, VariableIdentifierMapper> {
  Map<String, VariableScopeParentMapper> get scopeVariables {
    return {
      for (final entry in values)
        ...entry.map(
          text: (value) => value.scopeVariables,
          boolean: (value) => value.scopeVariables,
          choice: (value) => value.scopeVariables,
          model: (value) => value.scopeVariables,
        ),
    };
  }
}

extension VariableIdentifierMapperTextExt on VariableIdentifierMapperText {
  Map<String, VariableScopeParentMapper> get scopeVariables {
    return _getText(name: name, parrentName: parrentName);
  }
}

Map<String, VariableScopeParentMapper> _getText({
  required String name,
  required String? parrentName,
}) {
  return {
    name: VariableScopeParentMapper.text(
      name: name,
      parrentName: parrentName,
    ),
    '$name-empty': VariableScopeParentMapper.boolean(
      name: '$name-empty',
      parrentName: parrentName,
    ),
  };
}

extension VariableIdentifierMapperBooleanExt
    on VariableIdentifierMapperBoolean {
  Map<String, VariableScopeParentMapper> get scopeVariables {
    return _getBoolean(name: name, parrentName: parrentName);
  }
}

Map<String, VariableScopeParentMapper> _getBoolean({
  required String name,
  required String? parrentName,
}) {
  return {
    name: VariableScopeParentMapper.boolean(
      name: name,
      parrentName: parrentName,
    ),
  };
}

extension VariableIdentifierMapperChoiceExt on VariableIdentifierMapperChoice {
  Map<String, VariableScopeParentMapper> get scopeVariables {
    return _getChoice(name: name, parrentName: parrentName, options: options);
  }
}

Map<String, VariableScopeParentMapper> _getChoice({
  required String name,
  required String? parrentName,
  required List<String> options,
}) {
  return {
    name: VariableScopeParentMapper.text(
      name: name,
      parrentName: parrentName,
    ),
    ...Map.fromEntries(
      options.map(
        (option) => MapEntry(
          '$name-$option',
          VariableScopeParentMapper.boolean(
            name: '$name-$option',
            parrentName: parrentName,
          ),
        ),
      ),
    ),
  };
}

extension VariableIdentifierMapperModelExt on VariableIdentifierMapperModel {
  Map<String, VariableScopeParentMapper> get scopeVariables {
    return _getMap(
      parrentName: parrentName,
      name: name,
      textsChildren: textsChildren,
      booleansChildren: booleansChildren,
      choicesChildren: choicesChildren,
      subModelsChildre: subModelsChildren,
    );
  }
}

Map<String, VariableScopeParentMapper> _getMap({
  required String? parrentName,
  required String name,
  required List<VariableIdentifierMapperText> textsChildren,
  required List<VariableIdentifierMapperBoolean> booleansChildren,
  required List<VariableIdentifierMapperChoice> choicesChildren,
  required List<VariableIdentifierMapperModel> subModelsChildre,
}) {
  final textsMaps = textsChildren.map((textName) {
    return _getText(name: textName.name, parrentName: name);
  });
  final texts = textsMaps.isEmpty
      ? <String, VariableScopeParentMapper>{}
      : textsMaps.reduce((value, element) => {...value, ...element});

  final booleansMaps = booleansChildren.map((booleanName) {
    return _getBoolean(name: booleanName.name, parrentName: name);
  });
  final booleans = booleansMaps.isEmpty
      ? <String, VariableScopeParentMapper>{}
      : booleansMaps.reduce((value, element) => {...value, ...element});

  final choicesMaps = choicesChildren.map((choiceName) {
    return _getChoice(
        name: choiceName.name, parrentName: name, options: choiceName.options);
  });
  final choices = choicesMaps.isEmpty
      ? <String, VariableScopeParentMapper>{}
      : choicesMaps.reduce((value, element) => {...value, ...element});

  final submodelsMaps = subModelsChildre.map((subModelName) {
    return _getMap(
      parrentName: name,
      name: subModelName.name,
      textsChildren: subModelName.textsChildren,
      booleansChildren: subModelName.booleansChildren,
      choicesChildren: subModelName.choicesChildren,
      subModelsChildre: subModelName.subModelsChildren,
    );
  });
  final submodels = submodelsMaps.isEmpty
      ? <String, VariableScopeParentMapper>{}
      : submodelsMaps.reduce((value, element) => {...value, ...element});

  final allEntries = [
    ...texts.entries,
    ...booleans.entries,
    ...choices.entries,
    ...submodels.entries,
  ];

  return {
    name: VariableScopeParentMapper.model(
      name: name,
      parrentName: parrentName,
      textsNames: allEntries
          .where((element) => element.value is TextParentMapper)
          .map((e) => e.key)
          .toList(),
      booleanNames: allEntries
          .where((element) => element.value is BooleanParentMapper)
          .map((e) => e.key)
          .toList(),
      subModelsNames: allEntries
          .where((element) => element.value is ModelParentMapper)
          .map((e) => e.key)
          .toList(),
    ),
    ...texts,
    ...booleans,
    ...choices,
    ...submodels,
  };
}
