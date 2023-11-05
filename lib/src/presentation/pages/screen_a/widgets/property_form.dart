import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Name',
                    margin: const EdgeInsets.only(
                      left: 0,
                      top: 8,
                      right: 4,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Value',
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Price',
                    margin: const EdgeInsets.only(
                      left: 4,
                      top: 8,
                      right: 0,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
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
            GTextField(
              name: 'Rental Income',
              margin: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 0,
              ),
              validator: FormBuilderValidators.required(),
            ),
            const Divider(
              height: 20,
              thickness: 3,
              indent: 0,
              endIndent: 0,
              color: Colors.black12,
            ),
            const Text("SECTIONAL HEADING"),
            Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Bond',
                    margin: const EdgeInsets.only(
                      left: 0,
                      top: 8,
                      right: 4,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Levies',
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Rates & Taxes',
                    margin: const EdgeInsets.only(
                      left: 4,
                      top: 8,
                      right: 0,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Commission',
                    margin: const EdgeInsets.only(
                      left: 0,
                      top: 8,
                      right: 4,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Repairs',
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Wifi',
                    margin: const EdgeInsets.only(
                      left: 4,
                      top: 8,
                      right: 0,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
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
            Row(
              children: [
                Expanded(
                  child: GTextField(
                    name: 'Deposit',
                    margin: const EdgeInsets.only(
                      left: 0,
                      top: 8,
                      right: 4,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Bond & Transfer',
                    margin: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    validator: FormBuilderValidators.required(),
                  ),
                ),
                Expanded(
                  child: GTextField(
                    name: 'Initial Setup',
                    margin: const EdgeInsets.only(
                      left: 4,
                      top: 8,
                      right: 0,
                      bottom: 8,
                    ),
                    validator: FormBuilderValidators.required(),
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
