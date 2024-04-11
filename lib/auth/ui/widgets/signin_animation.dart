import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:lottie/lottie.dart';
import 'package:media_query_core/media_query_core.dart';

class SignInAnimation extends StatelessWidget {
  final double width;
  final double height;
  const SignInAnimation({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: SizedBoxApearDelay(
                child: Text(
                  'Welcome',
                  style: Theme.of(context).textTheme.displayMedium,
                ).animate().scale(),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 68),
              child: SizedBoxApearDelay(
                child: Text(
                  'to a new productivity world',
                  style: Theme.of(context).textTheme.titleMedium,
                )
                    .animate(
                      delay: const Duration(milliseconds: 800),
                    )
                    .fadeIn(),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Center(
              child: ImagineAnimation(),
            ),
          ),
        ],
      ),
    );
  }
}

class ImagineAnimation extends StatelessWidget {
  const ImagineAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.primary;
    final primaryContainer = Theme.of(context).colorScheme.primaryContainer;
    final onPrimaryContainer = Theme.of(context).colorScheme.onPrimaryContainer;

    final secondaryColor = Theme.of(context).colorScheme.secondary;
    final secondaryContainer = Theme.of(context).colorScheme.secondaryContainer;

    final tertiaryColor = Theme.of(context).colorScheme.tertiary;
    return Lottie.asset(
      'assets/lottie/auth/create_account.json',
      delegates: LottieDelegates(
        values: [
          /// Man
          ...<int>[42].map((e) {
            return ValueDelegate.color(
              ['**', 'man', 'Group $e', '**'],
              value: primaryContainer,
            );
          }).toList(),
          ...<int>[
            21,
            28,
          ].map((e) {
            return ValueDelegate.color(
              ['**', 'man', 'Group $e', '**'],
              value: secondaryColor,
            );
          }).toList(),
          ...<int>[
            20,
            27,
          ].map((e) {
            return ValueDelegate.color(
              ['**', 'man', 'Group $e', '**'],
              value: secondaryContainer,
            );
          }).toList(),
          ValueDelegate.color(
            ['**', 'right hand', 'Group 1', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'left Hand', 'Group 1', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'bg-shape', '**'],
            value: tertiaryColor,
          ),
          ValueDelegate.color(
            ['**', 'cofee cup', 'Group 5', '**'],
            value: primaryContainer,
          ),
          ValueDelegate.color(
            ['**', 'cofee cup', 'Group 2', '**'],
            value: primaryColor,
          ),

          ValueDelegate.color(
            ['**', 'leaves holder', 'Group 1', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'leaves holder', 'Group 2', '**'],
            value: onPrimaryContainer,
          ),

          // Book
          ValueDelegate.color(
            ['**', 'book', 'Group 1', '**'],
            value: primaryContainer,
          ),
          ValueDelegate.color(
            ['**', 'book', 'Group 20', '**'],
            value: primaryContainer,
          ),
          ValueDelegate.color(
            ['**', 'book', 'Group 21', '**'],
            value: tertiaryColor,
          ),
          ValueDelegate.color(
            ['**', 'book', 'Group 22', '**'],
            value: tertiaryColor,
          ),

          // Color pallete
          ...<int>[14, 15, 16, 17, 18, 19].map((e) {
            return ValueDelegate.color(
              ['**', 'paint board', 'Group $e', '**'],
              value: primaryColor,
            );
          }).toList(),
          ValueDelegate.color(
            ['**', 'paint board', 'Group 7', '**'],
            value: secondaryColor,
          ),

          // Plannet
          ValueDelegate.color(
            ['**', 'planet', 'Group 2', '**'],
            value: primaryContainer,
          ),
          ValueDelegate.color(
            ['**', 'planet', 'Group 4', '**'],
            value: primaryColor,
          ),
          ValueDelegate.color(
            ['**', 'planet', 'Group 3', '**'],
            value: onPrimaryContainer,
          ),

          // Lamp
          ValueDelegate.color(
            ['**', 'bulb', 'Group 6', '**'],
            value: tertiaryColor,
          ),
          ValueDelegate.color(
            ['**', 'bulb', 'Group 7', '**'],
            value: primaryContainer,
          ),
        ],
      ),
    );
  }
}
