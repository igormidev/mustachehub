import 'package:commom_states/cubits/session_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mustachehub/account/presenter/cubit/image_selector_cubit.dart';
import 'package:mustachehub/account/presenter/state/image_selector_state.dart';
import 'package:mustachehub/app_core/theme/components/error_snack_bar.dart';

class ImageUpdaterWrapper extends StatelessWidget {
  final Widget child;
  const ImageUpdaterWrapper({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<ImageSelectorCubit, ImageSelectorState>(
      listener: (
        BuildContext context,
        ImageSelectorState state,
      ) {
        state.map(
          withoutImage: (_) {},
          withImage: (_) {},
          loading: (_) {},
          failure: (state) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                ErrorSnackBar(
                  context: context,
                  text: state.name,
                  description: state.description,
                ),
              );
          },
          imageSelectorUploadSuccess: (state) {
            context.read<SessionCubit>().updateUserPhoto(
                  state.uploadedUrl,
                );
            context.pop();
          },
        );
      },
      child: child,
    );
  }
}
