// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'property_valuation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PropertyValuationImpl _$$PropertyValuationImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyValuationImpl(
      name: json['name'] as String,
      value: (json['value'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      rentalIncome: (json['rentalIncome'] as num).toDouble(),
      bond: (json['bond'] as num).toDouble(),
      levies: (json['levies'] as num).toDouble(),
      ratesTaxes: (json['ratesTaxes'] as num).toDouble(),
      wifi: (json['wifi'] as num).toDouble(),
    );

Map<String, dynamic> _$$PropertyValuationImplToJson(
        _$PropertyValuationImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'price': instance.price,
      'rentalIncome': instance.rentalIncome,
      'bond': instance.bond,
      'levies': instance.levies,
      'ratesTaxes': instance.ratesTaxes,
      'wifi': instance.wifi,
    };
