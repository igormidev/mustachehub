import 'package:mustachehub/account/data/entities/e_image_type.dart';

class ImageTypeResolver {
  /// Returns `null` if image does not math any type
  static ImageType? defineType(String pathName) {
    final isJpeg = pathName.toLowerCase().endsWith('.jpeg');
    final isJpg = pathName.toLowerCase().endsWith('.jpg');
    final isPng = pathName.toLowerCase().endsWith('.png');

    if (isJpg) return ImageType.jpg;
    if (isPng) return ImageType.png;
    if (isJpeg) return ImageType.jpeg;
    return null;
  }
}
