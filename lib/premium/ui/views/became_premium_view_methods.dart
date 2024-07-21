import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/premium/presenter/cubit/billing_configurations_cubit.dart';
import 'package:mustachehub/premium/ui/views/became_premium_view.dart';

mixin BecamePremiumViewMethods on State<BecamePremiumView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      if (mounted && context.mounted) {
        context.read<BillingConfigurationsCubit>().switchRecurrency();
      }
    });
  }
}
