import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MustacheLogo extends StatelessWidget {
  const MustacheLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    return Lottie.asset(
      'assets/lottie/visual_identity.json',
      delegates: LottieDelegates(
        values: [
          ValueDelegate.color(
            ['**', 'point', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'point 2', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'moustache', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'moustache 2', '**'],
            value: primaryColor,
          ),
        ],
      ),
    );
  }
}
