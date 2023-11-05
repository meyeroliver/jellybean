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
      name: json['Name'],
      value: double.parse(json['Value']),
      price: double.parse(json['Price']),
      rentalIncome: double.parse(json['Rental Income']),
      bond: double.parse(json['Bond']),
      levies: double.parse(json['Levies']),
      ratesTaxes: double.parse(json['Rates & Taxes']),
      wifi: double.parse(json['Wifi']),
    );
  }
}
