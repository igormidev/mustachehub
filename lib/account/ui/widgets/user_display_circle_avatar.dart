import 'package:commom_states/cubits/session_cubit.dart';
import 'package:commom_states/states/session_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_network/image_network.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';

class UserDisplayCircleAvatar extends StatelessWidget {
  final EdgeInsets? padding;
  final UserImageSize size;
  final double? height;
  final double? width;

  const UserDisplayCircleAvatar.normalSize({
    super.key,
    this.padding,
    this.height,
    this.width,
  }) : size = UserImageSize.normal;

  const UserDisplayCircleAvatar.smallSize({
    super.key,
    this.padding,
    this.height,
    this.width,
  }) : size = UserImageSize.small;

  @override
  Widget build(BuildContext context) {
    return SizedBoxApearDelay(
      height: height,
      width: width,
      duration: const Duration(milliseconds: 400),
      child: Padding(
        padding: padding ?? EdgeInsets.zero,
        child: SizedBox.expand(
          child: CircleAvatar(
            child: Padding(
              padding: size == UserImageSize.small
                  ? EdgeInsets.zero
                  : const EdgeInsets.all(8),
              child: SizedBox.expand(
                child: BlocBuilder<SessionCubit, SessionState>(
                  builder: (context, state) {
                    final user = state.userProfile();
                    final displayImage = user?.urlDisplayImage;
                    print('displayImage: $displayImage');
                    if (size == UserImageSize.small) {
                      return user == null
                          ? const Icon(
                              Icons.no_accounts,
                              size: 36,
                            )
                          : displayImage == null
                              ? const Icon(
                                  Icons.image_not_supported_outlined,
                                  size: 36,
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(120),
                                  child: FittedBox(
                                    child: ImageNetwork(
                                      image: displayImage,
                                      height: height ?? 300,
                                      width: width ?? 300,
                                      fitAndroidIos: BoxFit.cover,
                                      fitWeb: BoxFitWeb.cover,
                                      onLoading: const CircularProgressIndicator
                                          .adaptive(),
                                    ),
                                  ),
                                );
                    }

                    return CircleAvatar(
                      child: user == null
                          ? const _NormalSizeImageText(
                              Icons.no_accounts,
                              'Not logged in',
                            )
                          : displayImage == null
                              ? const _NormalSizeImageText(
                                  Icons.image_not_supported_outlined,
                                  'No image',
                                )
                              : ClipRRect(
                                  borderRadius: BorderRadius.circular(120),
                                  child: FittedBox(
                                    child: ImageNetwork(
                                      key: ValueKey(displayImage),
                                      image: displayImage,
                                      height: height ?? 140,
                                      width: width ?? 140,
                                      fitAndroidIos: BoxFit.cover,
                                      fitWeb: BoxFitWeb.cover,
                                      onLoading: const CircularProgressIndicator
                                          .adaptive(),
                                    ),
                                  ),
                                ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NormalSizeImageText extends StatelessWidget {
  final IconData iconData;
  final String text;
  const _NormalSizeImageText(this.iconData, this.text);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 45,
          ),
          const SizedBox(height: 4),
          Text(text),
        ],
      ),
    );
  }
}

enum UserImageSize {
  small,
  normal;
}
