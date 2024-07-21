import 'package:flutter/material.dart';
import 'package:mustache_hub_core/mustache_hub_core.dart';
import 'package:mustachehub/dashboard/ui/navigation_widgets/dashboard_drawer/dashboard_drawer.dart';
import 'package:mustachehub/premium/ui/views/became_premium_view_methods.dart';
import 'package:mustachehub/premium/ui/views/widgets/became_premium_header.dart';
import 'package:mustachehub/premium/ui/views/widgets/switch_month_year.dart';
import 'package:mustachehub/premium/ui/views/widgets/tier_product_tile.dart';

class BecamePremiumView extends StatefulWidget {
  const BecamePremiumView({super.key});

  @override
  State<BecamePremiumView> createState() => _BecamePremiumViewState();
}

class _BecamePremiumViewState extends State<BecamePremiumView>
    with BecamePremiumViewMethods {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pricing page'),
      ),
      drawer: context.drawerOrNull,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const BecamePremiumHeader(),
          const SizedBox(height: 16),
          const Center(
            child: SwitchMonthYear(),
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: PremiumTier.values.map((tier) {
              return TierProductTile(
                tier: tier,
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
