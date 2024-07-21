// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'billing_configurations_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BillingConfigurationsStateImpl _$$BillingConfigurationsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$BillingConfigurationsStateImpl(
      choosedRecurrency:
          $enumDecode(_$ERecurrencyMethodEnumMap, json['choosedRecurrency']),
    );

Map<String, dynamic> _$$BillingConfigurationsStateImplToJson(
        _$BillingConfigurationsStateImpl instance) =>
    <String, dynamic>{
      'choosedRecurrency':
          _$ERecurrencyMethodEnumMap[instance.choosedRecurrency]!,
    };

const _$ERecurrencyMethodEnumMap = {
  ERecurrencyMethod.monthly: 'monthly',
  ERecurrencyMethod.yearly: 'yearly',
};
