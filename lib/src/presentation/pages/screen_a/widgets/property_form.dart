import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jellybean/src/presentation/common/widgets/textfield.dart';
import 'package:jellybean/src/presentation/pages/screen_a/property_form_provider.dart';

class PropertyForm extends ConsumerWidget {
  final _properFromKey = GlobalKey<FormBuilderState>();

  PropertyForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FormBuilder(
      key: _properFromKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text("MAIN FORM HEADING"),
            const Text("SECTIONAL HEADING"),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Name',
                    margin: EdgeInsets.only(
                      left: 0,
                      top: 8,
                      right: 4,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.re,
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Value',
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Price',
                    margin:
                        EdgeInsets.only(left: 4, top: 8, right: 0, bottom: 8),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black12,
            ),
            const Text("SECTIONAL HEADING"),
            const GTextField(
              name: 'Rental Income',
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black12,
            ),
            const Text("SECTIONAL HEADING"),
            const Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Bond',
                    margin:
                        EdgeInsets.only(left: 0, top: 8, right: 4, bottom: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Levies',
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Rates & Taxes',
                    margin:
                        EdgeInsets.only(left: 4, top: 8, right: 0, bottom: 8),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Commission',
                    margin:
                        EdgeInsets.only(left: 0, top: 8, right: 4, bottom: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Repairs',
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Wifi',
                    margin:
                        EdgeInsets.only(left: 4, top: 8, right: 0, bottom: 8),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black12,
            ),
            const Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Deposit',
                    margin:
                        EdgeInsets.only(left: 0, top: 8, right: 4, bottom: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Bond & Transfer',
                    margin: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Initial Setup',
                    margin:
                        EdgeInsets.only(left: 4, top: 8, right: 0, bottom: 8),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate returns true if the form is valid, or false otherwise.
                        if (_properFromKey.currentState!.validate()) {
                          ref
                              .read(propertyFormDataProvider.notifier)
                              .submitFormData(
                                  _properFromKey.currentState!.instantValue);
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Expanded(child: Container())
              ],
            )
          ],
        ),
      ),
    );
  }
}
