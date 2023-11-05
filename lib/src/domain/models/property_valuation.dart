import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'property_valuation.freezed.dart';
part 'property_valuation.g.dart';

@freezed
class PropertyValuation with _$PropertyValuation {
  const factory PropertyValuation(
      {required String name,
      required double value,
      required double price,
      required double rentalIncome,
      required double bond,
      required double levies,
      required double ratesTaxes,
      required double wifi}) = _PropertyValuation;

  factory PropertyValuation.fromJson(Map<String, dynamic> json) =>
      _$PropertyValuationFromJson(json);
}
