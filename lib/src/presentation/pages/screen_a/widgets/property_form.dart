import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:jellybean/src/presentation/common/widgets/textfield.dart';

class PropertyForm extends StatefulWidget {
  const PropertyForm({super.key});

  @override
  State<PropertyForm> createState() => _PropertyFormState();
}

class _PropertyFormState extends State<PropertyForm> {
  /* 
    Create a global key that uniquely identifies the Form widget
    and allows validation of the form.
 */
  final _properFromKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _properFromKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const GTextField(
              name: 'Name',
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
            ),
            const GTextField(
              name: 'Value',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Price',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            const GTextField(
              name: 'Rental Income',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            const GTextField(
              name: 'Bond',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Levies',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Rates & Taxes',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Commission',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Repairs',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Wifi',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const Divider(
              height: 20,
              thickness: 5,
              indent: 0,
              endIndent: 0,
              color: Colors.black,
            ),
            const GTextField(
              name: 'Deposit',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Bond & Transfer',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              name: 'Initial Setup',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_properFromKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                  debugPrint(
                      _properFromKey.currentState?.instantValue.toString());
                }
              },
              child: const Text('Submit'),
            )
          ],
        ),
      ),
    );
  }
}
