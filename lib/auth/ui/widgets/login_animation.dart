import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LogInAnimation extends StatelessWidget {
  final double width;
  final double height;
  const LogInAnimation({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: width, maxHeight: height),
      child: Lottie.asset(
        'assets/lottie/auth/login.json',
        delegates: LottieDelegates(
          values: [
            /// Legs
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 13', '**'],
              value: Theme.of(context).colorScheme.primary,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 17', '**'],
              value: Theme.of(context).colorScheme.primaryContainer,
            ),

            /// Hair detail
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 14', '**'],
              value: Colors.white,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 15', '**'],
              value: Colors.white,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 18', '**'],
              value: Colors.white,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 19', '**'],
              value: Colors.white,
            ),

            /// Clothes
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 32', '**'],
              value: Theme.of(context).colorScheme.secondaryContainer,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 34', '**'],
              value: Theme.of(context).colorScheme.secondaryContainer,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'upper body', 'Group 37', '**'],
              value: Theme.of(context).colorScheme.secondary,
            ),

            // Verify Symbol
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'mark', 'Group 7', '**'],
              value: Theme.of(context).colorScheme.tertiary,
            ),

            // Chair/Details
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 11', '**'],
              value: Theme.of(context).colorScheme.secondary,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 40', '**'],
              value: Theme.of(context).colorScheme.tertiaryContainer,
              // value: Colors.red,
            ),

            // Lock
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'pass', '**'],
              value: Theme.of(context).colorScheme.primaryContainer,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'user', '**'],
              value: Theme.of(context).colorScheme.primaryContainer,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 69', '**'],
              value: Theme.of(context).colorScheme.primary,
            ),
            ValueDelegate.color(
              ['**', 'Layer 1 Outlines', 'Group 73', '**'],
              value: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
