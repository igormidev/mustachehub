import 'dart:typed_data';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/account/data/entities/e_image_type.dart';
import 'package:mustachehub/account/data/respositories/interfaces/i_image_repository.dart';
import 'package:mustachehub/account/presenter/state/image_selector_state.dart';
import 'package:mustachehub/auth/presenter/cubits/login_form_cubit.dart';

class ImageSelectorCubit extends Cubit<ImageSelectorState>
    with GlobalLoadingEnforcer<ImageSelectorState> {
  final IImageRepository _imageRepository;
  ImageSelectorCubit({
    required IImageRepository imageRepository,
  })  : _imageRepository = imageRepository,
        super(ImageSelectorState.withoutImage());

  void selectImage({
    required Uint8List image,
    required ImageType imageType,
  }) {
    emit(ImageSelectorState.withImage(
      imageType: imageType,
      image: image,
    ));
  }

  Future<void> uploadImage({
    required String userId,
  }) async {
    final image = state.mapOrNull(
      withImage: (v) => v.image,
      imageSelectorUploadSuccess: (v) => v.image,
      failure: (v) => v.image,
      loading: (v) => v.image,
    );
    final imageType = state.mapOrNull(
      withImage: (v) => v.imageType,
      imageSelectorUploadSuccess: (v) => v.imageType,
      failure: (v) => v.imageType,
      loading: (v) => v.imageType,
    );

    if (image == null || imageType == null) {
      emit(ImageSelectorState.failure(
        name: 'No image selected!',
        description: 'You need to select a image',
        imageType: imageType,
        image: image,
      ));
    } else {
      emit(ImageSelectorState.loading(
        imageType: imageType,
        image: image,
      ));
      await Future.delayed(
        const Duration(seconds: 2),
      );
      final response = await _imageRepository.uploadImage(
        image: image,
        userId: userId,
        imageType: imageType,
      );
      emit(response);
    }
  }

  void resetState() {
    emit(ImageSelectorState.withoutImage());
  }
}
