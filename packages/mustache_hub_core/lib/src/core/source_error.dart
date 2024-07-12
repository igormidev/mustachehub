import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_error.freezed.dart';
part 'source_error.g.dart';

@freezed
abstract class SourceError with _$SourceError {
  factory SourceError.standard({
    required String message,
  }) = _SourceErrorStandard;

  factory SourceError.cast({
    required String message,
  }) = _SourceErrorCast;

  factory SourceError.notFound({
    required String message,
  }) = _SourceErrorNotFound;

  factory SourceError.notLoggedIn({
    @Default('You need to be logged in to access this feature') String message,
  }) = _SourceErrorNotLoggedIn;

  factory SourceError.dontExistAnyData({
    required String message,
  }) = _SourceErrorDontExistAnyData;

  factory SourceError.dontHaveAccess({
    @Default('You need have access to this datga') String message,
  }) = _SourceErrorDontHaveAccess;

  factory SourceError.fromJson(Map<String, dynamic> json) =>
      _$SourceErrorFromJson(json);
}

extension SourceErrorX on SourceError {
  bool get dontHaveAccess => this is _SourceErrorDontHaveAccess;
  bool get dontExistAnyData => this is _SourceErrorDontExistAnyData;
  bool get notLoggedIn => this is _SourceErrorNotLoggedIn;
  bool get notFound => this is _SourceErrorNotFound;
  bool get castError => this is _SourceErrorCast;
}
