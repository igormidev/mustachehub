import 'dart:typed_data';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/account/data/entities/e_image_type.dart';

part 'image_selector_state.freezed.dart';

@freezed
abstract class ImageSelectorState with _$ImageSelectorState {
  factory ImageSelectorState.withoutImage() = _WithoutImage;

  factory ImageSelectorState.withImage({
    required Uint8List image,
    required ImageType imageType,
  }) = _WithImage;

  factory ImageSelectorState.loading({
    required Uint8List image,
    required ImageType imageType,
  }) = ImageSelectorStateLoading;

  factory ImageSelectorState.failure({
    required String name,
    required String description,
    required ImageType? imageType,
    required Uint8List? image,
  }) = ImageSelectorStateFailure;

  factory ImageSelectorState.imageSelectorUploadSuccess({
    required String uploadedUrl,
    required Uint8List image,
    required ImageType imageType,
  }) = ImageSelectorUploadSuccess;
}
