import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/premium/data/entities/e_recurrency_method.dart';
import 'package:mustachehub/premium/data/extensions/premium_tier_extension.dart';
import 'package:mustachehub/premium/presenter/cubit/billing_configurations_cubit.dart';
import 'package:mustachehub/premium/presenter/states/billing_configurations_state.dart';

class PriceDisplay extends StatelessWidget {
  final PremiumTier tier;
  const PriceDisplay({
    super.key,
    required this.tier,
  });

  @override
  Widget build(BuildContext context) {
    if (tier == PremiumTier.free) {
      return Text(
        'FREE',
        style: Theme.of(context).textTheme.titleLarge,
      );
    }

    return Container(
      height: 55,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child:
          BlocBuilder<BillingConfigurationsCubit, BillingConfigurationsState>(
              builder: (context, state) {
        final isYear = state.choosedRecurrency == ERecurrencyMethod.yearly;
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.only(top: 5.5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                    color: Theme.of(context).colorScheme.primary,
                    width: 2,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                child: Text(
                  'Year discount',
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall
                      ?.copyWith(fontSize: 10),
                ),
              ),
            )
                .animate(target: isYear ? 1 : 0)
                .fadeIn(duration: 700.ms)
                .shake(hz: isYear ? null : 1, rotation: isYear ? null : 0),
            Text(
              '\$ ${tier.yearPrice.toStringAsFixed(2)}',
              style: Theme.of(context).textTheme.titleLarge,
            ).animate(target: isYear ? 1 : 0).fade(),
            SizedBox(
              width: 84,
              height: 30,
              child: AnimatedAlign(
                duration: const Duration(milliseconds: 400),
                alignment: isYear ? Alignment.center : Alignment.center,
                child: Text(
                  '\$ ${tier.monthlyPrice.toStringAsFixed(2)}',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            )
                .animate(target: isYear ? 0 : 1)
                .slideX(begin: 1)
                .slideY(begin: -1.2)
                .scaleXY(begin: 0.7, end: 1, alignment: Alignment.centerLeft),
            Align(
              alignment: Alignment.topRight,
              child: Container(
                margin: const EdgeInsets.only(top: 14),
                width: 64,
                height: 2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).colorScheme.scrim,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
              ),
            ).animate(target: isYear ? 1 : 0).fadeIn(delay: 300.ms),
          ],
        );
      }),
    );
  }
}
