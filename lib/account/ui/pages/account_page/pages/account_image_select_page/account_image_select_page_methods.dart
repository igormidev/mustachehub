part of 'account_image_select_page.dart';

mixin AccountImageSelectPageMethods {
  void onGetImageFromDevice(BuildContext context) async {
    final cubit = context.read<ImageSelectorCubit>();

    try {
      final picker = ImagePicker();
      final XFile? xFile = await picker.pickImage(
        source: ImageSource.gallery,
      );
      if (xFile == null) return;
      final String imagePath = kIsWeb ? xFile.name.trim() : xFile.path.trim();

      final type = ImageTypeResolver.defineType(imagePath);

      if (type != null) {
        final Uint8List image = await xFile.readAsBytes();
        final bytes = image.lengthInBytes;
        final kb = bytes / 1024;
        final mb = kb / 1024;
        if (mb > 3) {
          if (context.mounted) {
            showErrorDialog(
              context,
              'Invalid image size',
              'The image is too big. Please, select an image with less than 3MB.',
            );
          }
        } else {
          cubit.selectImage(
            image: image,
            imageType: type,
          );
        }
      } else {
        if (context.mounted) {
          showWarningDialog(
            context,
            'Invalid image format',
            'The image needs to '
                'be ".jpg", "jpeg" or ".png" type.',
          );
        }
      }
    } catch (error) {
      if (context.mounted) {
        showErrorDialog(
          context,
          'Error',
          'An error occurred when trying to access '
              'user images. Please double-check the '
              'app\'s access permissions.',
        );
      }
    }
  }

  Future<void> uploadImage(BuildContext context) async {
    final userId = context.userProfile()?.id;
    if (userId == null) return;

    final cubit = context.read<ImageSelectorCubit>();

    await cubit.uploadImage(
      userId: userId,
    );
  }
}
