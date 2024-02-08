import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:media_query_core/perfomance/sized_box_apear_delay.dart';

class PictureOrLottieAnimationWidget extends StatelessWidget {
  final Uint8List? image;
  const PictureOrLottieAnimationWidget({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBoxApearDelay(
      height: 220,
      width: 220,
      duration: const Duration(milliseconds: 200),
      child: Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(maxWidth: 220, maxHeight: 220),
        child: CircleAvatar(
          backgroundColor:
              Theme.of(context).colorScheme.secondaryContainer.withAlpha(130),
          child: Builder(
            builder: (context) {
              if (image != null) {
                return Padding(
                  padding: const EdgeInsets.all(12),
                  child: SizedBox.expand(
                    child: CircleAvatar(
                      backgroundImage: MemoryImage(image!),
                    ),
                  ),
                ).animate().scale(duration: 700.milliseconds);
              }

              return SizedBoxApearDelay(
                duration: const Duration(milliseconds: 800),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Theme.of(context).colorScheme.primary,
                    BlendMode.modulate,
                  ),
                  child: Lottie.asset(
                    'assets/lottie/account/picture.json',
                  ),
                ).animate().fadeIn(duration: 250.milliseconds),
              );
            },
          ),
        ),
      ).animate().scale(),
    );
  }
}
