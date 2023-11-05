import 'package:jellybean/src/domain/models/property_valuation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'property_form_provider.g.dart';

@Riverpod(keepAlive: true)
class PropertyFormData extends _$PropertyFormData {
  @override
  PropertyValuation build() {
    return const PropertyValuation(
      name: '',
      value: 0,
      price: 0,
      rentalIncome: 0,
      bond: 0,
      levies: 0,
      ratesTaxes: 0,
      wifi: 0,
    );
  }

  void submitFormData(Map<String, dynamic> json) {
    /**
     * TODO:
     * ensure validation occurs on the ui side
     */
    state = PropertyValuation(
      name: json['Name'] ?? '',
      value: (json['Value'] ?? 0).toDouble(),
      price: (json['Price'] ?? 0).toDouble(),
      rentalIncome: (json['Rental Income'] ?? 0).toDouble(),
      bond: (json['Bond'] ?? 0).toDouble(),
      levies: (json['Levies'] ?? 0).toDouble(),
      ratesTaxes: (json['Rates & Taxes'] ?? 0).toDouble(),
      wifi: (json['Wifi'] ?? 0).toDouble(),
    );
  }
}
