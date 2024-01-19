import 'package:freezed_annotation/freezed_annotation.dart';

part 'custom_exception.freezed.dart';

@freezed
abstract class CustomException with _$CustomException implements Exception {
  factory CustomException.dataWithIdDoesNotExist({
    required String id,
  }) = _DataWithIdDoesNotExist;

  factory CustomException.castObjectError() = _CastObjectError;
}
