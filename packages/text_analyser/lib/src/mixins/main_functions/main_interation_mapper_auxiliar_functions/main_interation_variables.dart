part of '../../all_variables.dart';

mixin MainInterationVariables on AllVariables {
  /// The curent index the interator currently is in the text.
  ///
  /// In the start of each iteration, the index is incremented by one.
  int index = -1;

  late FindedGroup group;

  VariableScopeParentMapper get varScopeParentMapper {
    final contentName = group.content.contains('.')
        ? group.content.split('.').first
        : group.content;

    return flatMap[contentName]!;
  }

  TextOffset get offset => TextOffset(
        start: group.globalStart,
        end: group.globalEnd,
      );

  bool get isModel => varScopeParentMapper.maybeMap(
        model: (_) => true,
        orElse: () => false,
      );

  bool get isChoice => varScopeParentMapper.maybeMap(
        choice: (_) => true,
        orElse: () => false,
      );

  bool get isBoolean => varScopeParentMapper.maybeMap(
        boolean: (_) => true,
        orElse: () => false,
      );

  bool get isText => varScopeParentMapper.maybeMap(
        text: (_) => true,
        orElse: () => false,
      );

  bool get isNormalOpenDelimiter => group.fullMatchText.startsWith('{{#');

  bool get isInverseOpenDelimiter => group.fullMatchText.startsWith('{{^');

  bool get isCloseDelimiter => group.fullMatchText.startsWith('{{/');

  bool get hasOption => group.fullMatchText.contains('.');

  bool get hasDelimiter =>
      isNormalOpenDelimiter ||
      isCloseDelimiter ||
      (isInverseOpenDelimiter && isBoolean);
}
