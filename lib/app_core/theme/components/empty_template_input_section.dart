import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyIndicatorSection extends StatelessWidget {
  final String text;
  final String assetName;
  final bool willHaveCircleAvatarInDarkMode;
  final bool sholdRepeat;
  final double? margin;

  const EmptyIndicatorSection.empty({
    super.key,
    required this.text,
    required this.willHaveCircleAvatarInDarkMode,
    this.margin,
    this.sholdRepeat = true,
  }) : assetName = 'assets/lottie/empty.json';

  const EmptyIndicatorSection.error({
    super.key,
    required this.text,
    required this.willHaveCircleAvatarInDarkMode,
    this.margin,
    this.sholdRepeat = true,
  }) : assetName = 'assets/lottie/error_widget.json';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(color: Theme.of(context).colorScheme.outline),
            ),
            const SizedBox(height: 16),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 250 - (margin ?? 0),
                maxWidth: 250 - (margin ?? 0),
              ),
              child: Theme.of(context).brightness == Brightness.light &&
                      willHaveCircleAvatarInDarkMode == false
                  ? SizedBox.expand(
                      child: LottieBuilder.asset(
                        assetName,
                        fit: BoxFit.contain,
                        repeat: sholdRepeat,
                      ),
                    )
                  : SizedBox.expand(
                      child: CircleAvatar(
                        backgroundColor:
                            Theme.of(context).colorScheme.outlineVariant,
                        child: SizedBox.expand(
                          child: LottieBuilder.asset(
                            assetName,
                            fit: BoxFit.contain,
                            repeat: sholdRepeat,
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
