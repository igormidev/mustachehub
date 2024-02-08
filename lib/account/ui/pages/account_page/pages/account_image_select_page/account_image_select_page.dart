import 'package:commom_states/states/session_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:media_query_core/reactiveness/is_loading_bloc.dart';
import 'package:mustachehub/account/presenter/cubit/image_selector_cubit.dart';
import 'package:mustachehub/account/presenter/resolvers/image_type_resolver.dart';
import 'package:mustachehub/account/presenter/state/image_selector_state.dart';
import 'package:mustachehub/account/ui/pages/account_page/pages/account_image_select_page/account_image_select_page_agregator.dart';
import 'package:mustachehub/account/ui/pages/account_page/pages/account_image_select_page/widgets/picture_or_lottie_animation_widget.dart';
import 'package:mustachehub/app_core/theme/dialogs_api/implementations/show_error_dialog.dart';

part 'account_image_select_page_methods.dart';

class AccountImageSelectPage extends StatelessWidget
    with AccountImageSelectPageMethods {
  const AccountImageSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ImageSelectorCubit>();

    return PopScope(
      canPop: true,
      onPopInvoked: (didPop) {
        cubit.resetState();
      },
      child: AccountImageSelectPageAgregator(
        child: Scaffold(
          appBar: AppBar(
            title: const Text('User image'),
          ),
          body: Center(
            child: FittedBox(
              child: SizedBox(
                width: 360,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );

                            return PictureOrLottieAnimationWidget(
                              image: image,
                            );
                          },
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Choose the user image',
                          style: Theme.of(context)
                              .textTheme
                              .titleLarge
                              ?.copyWith(
                                color: Theme.of(context).colorScheme.tertiary,
                              ),
                        ),
                        const SizedBox(height: 20),
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );
                            final hasValue = image != null;

                            return ElevatedButton.icon(
                              onPressed: () {
                                if (hasValue) {
                                  uploadImage(context);
                                } else {
                                  onGetImageFromDevice(context);
                                }
                              },
                              icon: IsLoadingBloc<ImageSelectorCubit,
                                  ImageSelectorState>(
                                child: Icon(
                                  hasValue ? Icons.save : Icons.photo_library,
                                ),
                              ),
                              label: Text(
                                hasValue
                                    ? 'Save selected image'
                                    : 'Select from galery',
                              ),
                            );
                          },
                        ),
                        BlocBuilder<ImageSelectorCubit, ImageSelectorState>(
                          bloc: cubit,
                          builder: (context, state) {
                            final image = state.mapOrNull(
                              withImage: (v) => v.image,
                              imageSelectorUploadSuccess: (v) => v.image,
                              failure: (v) => v.image,
                              loading: (v) => v.image,
                            );
                            if (image == null) {
                              return const SizedBox(height: 75);
                            }

                            return SizedBox(
                              height: 75,
                              child: Column(
                                children: [
                                  const SizedBox(height: 16),
                                  const Row(
                                    children: [
                                      SizedBox(width: 80),
                                      Expanded(child: Divider()),
                                      SizedBox(width: 16),
                                      Text('Or'),
                                      SizedBox(width: 16),
                                      Expanded(child: Divider()),
                                      SizedBox(width: 80),
                                    ],
                                  ),
                                  const SizedBox(height: 4),
                                  IgnorePointer(
                                    ignoring:
                                        state is ImageSelectorStateLoading,
                                    child: TextButton.icon(
                                      onPressed: () =>
                                          onGetImageFromDevice(context),
                                      icon: Icon(
                                        Icons.photo_library,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .outline,
                                      ),
                                      label: Text(
                                        'Select other image',
                                        style: TextStyle(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .outline,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
