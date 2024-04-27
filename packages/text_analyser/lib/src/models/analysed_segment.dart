import 'package:freezed_annotation/freezed_annotation.dart';

part 'analysed_segment.freezed.dart';

@freezed
abstract class AnalysedSegment with _$AnalysedSegment {
  /// The segment of the text that is not a identifier declaration of eny type.
  /// Only text.
  factory AnalysedSegment.text({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentText;

  /// The segment of the text that is a valid identifier declaration.
  /// Can be for text, boolean or model (etc...).
  factory AnalysedSegment.validDeclaration({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentDeclaration;

  /// This segment try to declare a model but the declaration is not complete.
  /// So it has the identifier name of a model that exists, but in the variable
  /// declaration it is not clear if it is a start or end declaration (that is:
  /// does not contain ether '#' or '/' after the '{{' ).
  factory AnalysedSegment.invalidMapDeclaration({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentInvalidMapDeclaration;

  /// This is a valid open mode identifier declaration, but because the rest of
  /// the text dosen't have an corresponding close declaration match. It is invalid.
  factory AnalysedSegment.modelDeclarationOpenWithoutClose({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentModelDeclarationOpenWithoutClose;

  /// This is a valid close mode identifier declaration, but because the previous part of
  /// the text dosen't have an corresponding open declaration match. It is invalid.
  factory AnalysedSegment.modelDeclarationCloseWithoutOpen({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentModelDeclarationCloseWithoutOpen;

  /// This is a valid open mode identifier declaration, but because the rest of
  /// the text dosen't have an corresponding close declaration match. It is invalid.
  factory AnalysedSegment.booleanDeclarationOpenWithoutClose({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentBooleanDeclarationOpenWithoutClose;

  /// This is a valid close mode identifier declaration, but because the previous part of
  /// the text dosen't have an corresponding open declaration match. It is invalid.
  factory AnalysedSegment.booleanDeclarationCloseWithoutOpen({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentBooleanDeclarationCloseWithoutOpen;

  /// This is a sintax correct declaration. But the identifier its of an
  /// cataloged variable that is not an model. And only models can have
  /// open or close delimiters sirgil indicator.
  factory AnalysedSegment.nonModelVariableWithOpenOrCloseDelimmiter({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentNonModelVariableWithOpenOrCloseDelimmiter;

  /// This is a valid identifier declaration, but the identifier is not
  /// cataloged (that is: has not been created by the user)
  factory AnalysedSegment.declarationOfUncatalogedVariable({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentDeclarationOfUncatalogedVariable;

  /// This is when the user used a variable that exists but is not
  /// available in the current context. For instance: Is trying to use a
  /// variable of a model outside of the model scope.
  factory AnalysedSegment.variableExistsButCannotBeUsedInThisContext({
    // ✅
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentVariableExistsButCannotBeUsedInThisContext;
}

/*
enum SegmentType {
  /// The segment of the text that is not a identifier declaration of eny type.
  /// Only text.
  text,

  /// The segment of the text that is a valid identifier declaration.
  /// Can be for text, boolean or model (etc...).
  validDeclaration,

  /// This segment try to declare a model but the declaration is not complete.
  /// So it has the identifier name of a model that exists, but in the variable
  /// declaration it is not clear if it is a start or end declaration (that is:
  /// does not contain ether '#' or '/' after the '{{' ).
  invalidMapDeclaration,

  /// This is a valid open mode identifier declaration, but because the rest of
  /// the text dosen't have an corresponding close declaration match. It is invalid.
  modelDeclarationOpenWithoutClose,

  /// This is a valid close mode identifier declaration, but because the previous part of
  /// the text dosen't have an corresponding open declaration match. It is invalid.
  modelDeclarationCloseWithoutOpen,

  /// This is a valid identifier declaration, but the identifier is not
  /// cataloged (that is: has not been created by the user)
  declarationOfVariableUncatalogedVariable,

  /// This is when the user used a variable that exists but is not
  /// available in the current context. For instance: Is trying to use a
  /// variable of a model outside of the model scope.
  variableExistsButCannotBeUsedInThisContext;
}
*/

class TextOffset {
  final int start;
  final int end;

  const TextOffset({
    required this.start,
    required this.end,
  });
}
