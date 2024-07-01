import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';

extension PremiumTierExtension on PremiumTier {
  String get name {
    return switch (this) {
      PremiumTier.free => 'Free',
      PremiumTier.starter => 'Starter',
      PremiumTier.unlimited => 'Unlimited',
      PremiumTier.pro => 'Pro',
    };
  }

  double get yearPrice {
    return switch (this) {
      PremiumTier.free => 0.0,
      PremiumTier.starter => 4.99,
      PremiumTier.unlimited => 9.99,
      PremiumTier.pro => 30.00,
    };
  }

  double get monthlyPrice {
    return switch (this) {
      PremiumTier.free => 0.0,
      PremiumTier.starter => 8.50,
      PremiumTier.unlimited => 14.99,
      PremiumTier.pro => 45.00,
    };
  }

  IconData get icon {
    return switch (this) {
      PremiumTier.free => Icons.linear_scale_outlined,
      PremiumTier.starter => Icons.keyboard_arrow_up_rounded,
      PremiumTier.unlimited => Icons.keyboard_double_arrow_up_rounded,
      PremiumTier.pro => Icons.workspace_premium_rounded,
    };
  }

  List<List<TextSpan>> listOfadvantagesOfTier(
    BuildContext context,
    TextStyle? defaultStyle,
  ) {
    final style = defaultStyle;
    final highlighted = style?.copyWith(
      fontWeight: FontWeight.bold,
      color: Theme.of(context).colorScheme.primary,
    );

    final underline = highlighted?.copyWith(
      decoration: TextDecoration.underline,
    );

    return switch (this) {
      PremiumTier.free => [
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '10',
              style: underline,
            ),
            const TextSpan(
              text: ' saved templates in colection',
            ),
          ],
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '10',
              style: underline,
            ),
            const TextSpan(
              text: ' variables per mustache template',
            ),
          ],
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '3',
              style: underline,
            ),
            const TextSpan(
              text: ' tabs of text generation at same time',
            ),
          ],
          [
            const TextSpan(
              text: 'Generate custom texts with pre-created templates',
            ),
          ],
          [
            const TextSpan(
              text: 'Create your own mustache templates',
            ),
          ],
          [
            const TextSpan(
              text: 'Use your collection of templates in multiple devices',
            ),
          ],
          [
            const TextSpan(
              text: 'Use templates created by other users in market',
            ),
          ],
        ],
      PremiumTier.starter => [
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '50',
              style: underline,
            ),
            const TextSpan(
              text: ' saved templates in colection',
            ),
          ],
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '15',
              style: underline,
            ),
            const TextSpan(
              text: ' variables per mustache template',
            ),
          ],
          [
            TextSpan(
              text: 'Limit',
              style: highlighted,
            ),
            const TextSpan(
              text: ' of ',
            ),
            TextSpan(
              text: '5',
              style: underline,
            ),
            const TextSpan(
              text: ' tabs of text generation at same time',
            ),
          ],
        ],
      PremiumTier.unlimited => [
          [
            TextSpan(
              text: 'Unlimited',
              style: underline,
            ),
            const TextSpan(
              text: ' templates in user collection',
            ),
          ],
          [
            TextSpan(
              text: 'Unlimited',
              style: underline,
            ),
            const TextSpan(
              text: ' variables per mustache template',
            ),
          ],
          [
            TextSpan(
              text: 'Unlimited',
              style: underline,
            ),
            const TextSpan(
              text: ' tabs of text generation at same time',
            ),
          ],
          [
            TextSpan(
              text: 'Clone',
              style: underline,
            ),
            const TextSpan(
              text: ' to ',
            ),
            TextSpan(text: 'your collection', style: highlighted),
            const TextSpan(
              text:
                  ' a template from the mustache hub community so you can then ',
            ),
            TextSpan(
              text: 'edit it',
              style: underline,
            ),
          ],
          [
            const TextSpan(
              text: 'Able to ',
            ),
            TextSpan(
              text: 'leave a comment',
              style: underline,
            ),
            const TextSpan(
              text: ' to a mustache in the hub community',
            ),
          ],
        ],
      PremiumTier.pro => [
          [
            const TextSpan(
              text: 'Create ',
            ),
            TextSpan(
              text: 'private templates',
              style: underline,
            ),
            const TextSpan(
              text: ' that will be availible just for you and ',
            ),
            TextSpan(
              text: 'will not apear',
              style: highlighted,
            ),
            const TextSpan(
              text: ' in the mustache hub community',
            ),
          ],
          [
            TextSpan(
              text: 'Verified',
              style: underline,
            ),
            const TextSpan(
              text: ' icon in the mustache hub community',
            ),
          ],
          [
            TextSpan(
              text: 'Comments',
              style: underline,
            ),
            const TextSpan(
              text: ' made in the hub will be ',
            ),
            TextSpan(
              text: 'highlighted',
              style: highlighted,
            ),
          ],
          [
            const TextSpan(
              text: 'Support ',
            ),
            TextSpan(
              text: 'piority',
              style: underline,
            ),
          ],
          [
            const TextSpan(
              text: 'Directly talk with our developer team to give '
                  'feedback and recomend new features to the app.\n',
            ),
            TextSpan(
              text: 'It\'s ',
              style: highlighted,
            ),
            TextSpan(
              text: 'you',
              style: underline,
            ),
            TextSpan(
              text: ' helping mustache to became even better',
              style: highlighted,
            ),
          ],
        ],
    };
  }
}

/*

<======> Free
Generate custom texts with pre-created templates
Create your own mustache templates
Collection with 10 templates limit
Limit of 10 variables per template
Use your collection of templates in multiple devices
Use templates created by other users in market

<======> Starter <======>
Collection with 50 templates limit
Limit of 15 variables per template

<======> Unlimited <======>
Able to leave a comment to a mustache in the hub community
Unlimited collections
Unlimited variables per template
Clone to your collection a template from the mustache hub community so you can then edit it

<======> Pro <======>
Create private templates that will be availible just to you and will not apear in the mustache hub community
Verified icon in the mustache hub community
Comments made in the hub will be highlighted
Support piority
Directly talk with our developer team to give feedback recomend a new feature in the app (It's you helping mustache to became even better)

*/