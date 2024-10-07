import 'package:enchanted_regex/enchanted_regex.dart';
import 'package:text_analyser/text_analyser.dart';

class ModelParentScopeValidationPayload {
  final OpenModelDeclarationPayload open;
  final OpenModelDeclarationPayload close;
  const ModelParentScopeValidationPayload({
    required this.open,
    required this.close,
  });
}

class OpenModelDeclarationPayload {
  final ModelParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const OpenModelDeclarationPayload({
    required this.parentMapper,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class OpenBooleanDeclarationPayload {
  final BooleanParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const OpenBooleanDeclarationPayload({
    required this.parentMapper,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

// class OpenChoiceDeclarationPayload {
//   final ChoiceParentMapper parentMapper;
//   final FindedGroup findedGroup;
//   final int indexInSegment;
//   const OpenChoiceDeclarationPayload({
//     required this.parentMapper,
//     required this.findedGroup,
//     required this.indexInSegment,
//   });
// }

class BooleanParentScopeValidationPayload {
  final OpenBooleanDeclarationPayload open;
  final OpenBooleanDeclarationPayload close;
  const BooleanParentScopeValidationPayload({
    required this.open,
    required this.close,
  });
}

// class ChoiceParentScopeValidationPayload {
//   final OpenChoiceDeclarationPayload open;
//   final OpenChoiceDeclarationPayload close;
//   const ChoiceParentScopeValidationPayload({
//     required this.open,
//     required this.close,
//   });
// }

class TextParentScopeValidationPayload {
  final TextParentMapper parentMapper;
  final FindedGroup findedGroup;
  final int indexInSegment;
  const TextParentScopeValidationPayload({
    required this.parentMapper,
    required this.findedGroup,
    required this.indexInSegment,
  });
}

class ToAnalyseScope {
  final int indexInSegment;
  final IdentifierScope scope;
  const ToAnalyseScope({
    required this.indexInSegment,
    required this.scope,
  });
}

class IdentifierScope {
  final IdentifierDeclaration startDeclaration;
  final IdentifierDeclaration endDeclaration;
  final String identifier;
  const IdentifierScope({
    required this.startDeclaration,
    required this.endDeclaration,
    required this.identifier,
  });
}

class IdentifierDeclaration {
  final int start;
  final int end;

  const IdentifierDeclaration({
    required this.start,
    required this.end,
  });
}
