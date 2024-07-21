import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/premium/data/entities/e_recurrency_method.dart';
import 'package:mustachehub/premium/presenter/cubit/billing_configurations_cubit.dart';
import 'package:mustachehub/premium/presenter/states/billing_configurations_state.dart';

class SwitchMonthYear extends StatelessWidget {
  const SwitchMonthYear({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child:
          BlocBuilder<BillingConfigurationsCubit, BillingConfigurationsState>(
        builder: (context, state) {
          final isYear = state.choosedRecurrency == ERecurrencyMethod.yearly;
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Monthly'),
              const Text(' subscription'),
              const SizedBox(width: 8),
              Transform.scale(
                scale: 0.6,
                child: Switch.adaptive(
                  value: isYear,
                  activeColor: Theme.of(context).colorScheme.primary,
                  onChanged: (_) {
                    context
                        .read<BillingConfigurationsCubit>()
                        .switchRecurrency();
                  },
                ),
              ),
              const SizedBox(width: 8),
              const Text('Yearly'),
              const Text(' subscription'),
            ],
          );
        },
      ),
    );
  }
}
