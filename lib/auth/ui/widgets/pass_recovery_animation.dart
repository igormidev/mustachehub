import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class PassRecoveryAnimation extends StatelessWidget {
  final double width;
  final double height;
  const PassRecoveryAnimation({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      constraints: BoxConstraints(maxWidth: width, maxHeight: height),
      child: Lottie.asset(
        'assets/lottie/auth/forgot_password.json',
        delegates: LottieDelegates(
          values: [
            ...[484, 470, 473, 459, 454, 496].map((e) {
              return ValueDelegate.color(
                ['**', 'Path $e', '**'],
                value: Theme.of(context).colorScheme.primary,
              );
            }).toList(),
            ...[456, 461].map((e) {
              return ValueDelegate.color(
                ['**', 'Path $e', '**'],
                value: Theme.of(context).colorScheme.secondaryContainer,
              );
            }).toList(),
            ValueDelegate.color(
              ['**', 'Floor', '**'],
              value: Theme.of(context).colorScheme.primaryContainer,
            ),
            ValueDelegate.color(
              ['**', 'Shadow', '**'],
              value: Theme.of(context).colorScheme.tertiary,
            ),
            ...[493, 483, 486].map((e) {
              return ValueDelegate.color(
                ['**', 'Path $e', '**'],
                value: Theme.of(context).colorScheme.secondary,
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
