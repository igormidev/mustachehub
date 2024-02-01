import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotFound404Page extends StatelessWidget {
  const NotFound404Page({super.key});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.secondary;
    final secondaryColor = Theme.of(context).colorScheme.tertiaryContainer;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: Lottie.asset(
                    'assets/lottie/not_found_404.json',
                    delegates: LottieDelegates(
                      text: (initialText) => '**$initialText**',
                      values: [
                        // Balon 2 colors
                        ...<int>[1, 2, 5, 6, 7, 8, 9, 11].map((groupNumber) {
                          return ValueDelegate.color(
                            ['**', 'Balon 2', '404 - Group $groupNumber', '**'],
                            value: primaryColor,
                          );
                        }).toList(),
                        ...<int>[3, 4, 10, 12].map((groupNumber) {
                          return ValueDelegate.color(
                            ['**', 'Balon 2', '404 - Group $groupNumber', '**'],
                            value: secondaryColor,
                          );
                        }).toList(),

                        // Balon 1 colors
                        ValueDelegate.color(
                          ['**', 'balon 1', 'awan+1', '**'],
                          value: secondaryColor,
                        ),
                        ...<int>[13, 14, 17, 18, 19, 20, 21, 22, 23]
                            .map((groupNumber) {
                          return ValueDelegate.color(
                            ['**', 'balon 1', '404 - Group $groupNumber', '**'],
                            value: primaryColor,
                          );
                        }).toList(),
                        ...<int>[15, 16].map((groupNumber) {
                          return ValueDelegate.color(
                            ['**', 'balon 1', '404 - Group $groupNumber', '**'],
                            value: secondaryColor,
                          );
                        }).toList(),

                        // Text
                        ValueDelegate.color(
                          ['**', 'Text', '**'],
                          value: primaryColor,
                        ),
                        ValueDelegate.color(
                          ['**', 'awan+6', '**'],
                          value: Colors.white,
                        ),

                        ...<int>[1, 2, 3, 4, 5].map((groupNumber) {
                          return ValueDelegate.color(
                            ['**', '$groupNumber+Bola samping', '**'],
                            value: Theme.of(context)
                                .colorScheme
                                .secondaryContainer
                                .withAlpha(100),
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                ),
              ),
              Text(
                'Page not found',
                style: Theme.of(context).textTheme.displaySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
