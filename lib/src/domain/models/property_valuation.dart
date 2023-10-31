import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'property_valuation.freezed.dart';

@freezed
class ProportyValuation with _$ProportyValuation {
  const factory ProportyValuation(
      {required String name,
      required double value,
      required double price,
      required double rentalIncome,
      required double bond,
      required double levies,
      required double ratesTaxes,
      required double wifi}) = _PropertyValuation;
}
