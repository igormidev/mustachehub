// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';
part 'analysed_segment.freezed.dart';

/// The status of a segment of text that has been analysed.
///
/// The status can okay, that means that it is a valid declaration of a variable. [_AnalysedSegmentValid]
/// If not, will be invalid and will have atributes that helps to give information about the error.
@freezed
abstract class AnalysedSegmentStatus with _$AnalysedSegmentStatus {
  /// An segment that represents a normal text without any special meaning.
  /// That is: does not represent a variable declaration of any type.
  factory AnalysedSegmentStatus.normalText({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentText;

  /// The segment of the text that is a valid identifier declaration.
  /// Can be for text, boolean, choice or model (etc...).
  factory AnalysedSegmentStatus.validDeclaration({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentValid;

  /// This segment try to declare a model but the declaration is not complete.
  /// So it has the identifier name of a model that exists, but in the variable
  /// declaration it is not clear if it is a start or end declaration (that is:
  /// does not contain ether '#' or '/' after the '{{' ).
  factory AnalysedSegmentStatus.invalidMapDeclaration({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentInvalidMapDeclaration;

  /// This is a valid open mode identifier declaration, but because the rest of
  /// the text dosen't have an corresponding close declaration match. It is invalid.
  factory AnalysedSegmentStatus.modelDeclarationOpenWithoutClose({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentModelDeclarationOpenWithoutClose;

  /// This is a valid close mode identifier declaration, but because the previous part of
  /// the text dosen't have an corresponding open declaration match. It is invalid.
  factory AnalysedSegmentStatus.modelDeclarationCloseWithoutOpen({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentModelDeclarationCloseWithoutOpen;

  /// This is a valid open mode identifier declaration, but because the rest of
  /// the text dosen't have an corresponding close declaration match. It is invalid.
  factory AnalysedSegmentStatus.booleanDeclarationOpenWithoutClose({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentBooleanDeclarationOpenWithoutClose;

  /// This is a valid close mode identifier declaration, but because the previous part of
  /// the text dosen't have an corresponding open declaration match. It is invalid.
  factory AnalysedSegmentStatus.booleanDeclarationCloseWithoutOpen({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentBooleanDeclarationCloseWithoutOpen;

  /// This is a sintax correct declaration. But the identifier its of an
  /// cataloged variable that is not an model. And only models can have
  /// open or close delimiters sirgil indicator.
  factory AnalysedSegmentStatus.nonModelVariableWithOpenOrCloseDelimmiter({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentNonModelVariableWithOpenOrCloseDelimmiter;

  /// This is a valid identifier declaration, but the identifier is not
  /// cataloged (that is: has not been created by the user)
  factory AnalysedSegmentStatus.declarationOfUncatalogedVariable({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentDeclarationOfUncatalogedVariable;

  /// This is when the user used a variable that exists but is not
  /// available in the current context. For instance: Is trying to use a
  /// variable of a model outside of the model scope.
  factory AnalysedSegmentStatus.variableExistsButCannotBeUsedInThisContext({
    required TextOffset offset,
    required String segmentText,
  }) = _AnalysedSegmentVariableExistsButCannotBeUsedInThisContext;
}

class TextOffset {
  final int start;
  final int end;

  const TextOffset({
    required this.start,
    required this.end,
  });

  @override
  String toString() => 'TextOffset(start: $start, end: $end)';
}
