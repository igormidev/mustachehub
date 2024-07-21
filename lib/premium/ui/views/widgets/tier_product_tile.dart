import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/premium/data/extensions/premium_tier_extension.dart';
import 'package:mustachehub/premium/ui/views/widgets/price_display.dart';

class TierProductTile extends StatelessWidget {
  final PremiumTier tier;
  const TierProductTile({super.key, required this.tier});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.bodySmall?.copyWith(fontSize: 10);
    return Container(
      width: 170,
      height: 480,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Column(
            children: [
              const SizedBox(height: 8),
              Icon(tier.icon, size: 60),
              Text(
                tier.name,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              ...tier.listOfadvantagesOfTier(context, style).map(
                (spans) {
                  return _TierAtribute(
                    defaultStyle: style,
                    spans: spans,
                  );
                },
              ).toList(),
              const Spacer(),
              PriceDisplay(tier: tier),
              if (tier != PremiumTier.free) ...[
                const SizedBox(height: 8),
                Container(
                  height: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Start free trial'),
                  ),
                ),
              ] else ...[
                const SizedBox(height: 38),
              ],
              const SizedBox(height: 16),
            ],
          ),
          if (tier == PremiumTier.unlimited) ...[
            Container(
              height: double.maxFinite,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: Theme.of(context).colorScheme.secondary,
                  width: 4,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Transform.translate(
                offset: const Offset(0, -10),
                child: Container(
                  height: 25,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Theme.of(context).colorScheme.secondary,
                      width: 4,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'MOST POPULAR',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ),
                )
                    .animate(
                      delay: 1.seconds,
                      onPlay: (controller) => controller.repeat(),
                    )
                    .then(delay: 1.seconds)
                    .shimmer(
                      duration: 1.seconds,
                    ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _TierAtribute extends StatelessWidget {
  final List<TextSpan> spans;
  final TextStyle? defaultStyle;
  const _TierAtribute({required this.spans, required this.defaultStyle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.star_border_rounded,
            size: 16,
          ),
          const SizedBox(width: 4),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: defaultStyle,
                children: spans,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
