import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustachehub/premium/data/entities/e_recurrency_method.dart';
import 'package:mustachehub/premium/presenter/states/billing_configurations_state.dart';

class BillingConfigurationsCubit extends Cubit<BillingConfigurationsState> {
  BillingConfigurationsCubit() : super(BillingConfigurationsState.initial());

  void switchRecurrency() {
    final newRecurrency = state.choosedRecurrency == ERecurrencyMethod.monthly
        ? ERecurrencyMethod.yearly
        : ERecurrencyMethod.monthly;

    emit(state.copyWith(choosedRecurrency: newRecurrency));
  }
}
