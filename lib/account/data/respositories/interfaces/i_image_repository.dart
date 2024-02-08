import 'dart:typed_data';
import 'package:mustachehub/account/data/entities/e_image_type.dart';
import 'package:mustachehub/account/presenter/state/image_selector_state.dart';

abstract class IImageRepository {
  Future<ImageSelectorState> uploadImage({
    required String userId,
    required ImageType imageType,
    required Uint8List image,
  });
}
