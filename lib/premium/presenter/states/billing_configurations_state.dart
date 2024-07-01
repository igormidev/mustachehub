import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mustachehub/premium/data/entities/e_recurrency_method.dart';

part 'billing_configurations_state.freezed.dart';
part 'billing_configurations_state.g.dart';

@freezed
abstract class BillingConfigurationsState with _$BillingConfigurationsState {
  factory BillingConfigurationsState({
    required ERecurrencyMethod choosedRecurrency,
  }) = _BillingConfigurationsState;

  factory BillingConfigurationsState.initial() => BillingConfigurationsState(
        choosedRecurrency: ERecurrencyMethod.monthly,
      );

  factory BillingConfigurationsState.fromJson(Map<String, dynamic> json) =>
      _$BillingConfigurationsStateFromJson(json);
}
