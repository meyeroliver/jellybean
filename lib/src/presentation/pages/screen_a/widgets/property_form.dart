import 'package:flutter/material.dart';
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
  final _properFromKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _properFromKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const GTextField(
              hintText: 'Name',
              margin: EdgeInsets.symmetric(vertical: 4.0, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Value',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Price',
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
              hintText: 'Rental Income',
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
              hintText: 'Bond',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Levies',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Rates & Taxes',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Commission',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Repairs',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Wifi',
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
              hintText: 'Deposit',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Bond & Transfer',
              margin: EdgeInsets.symmetric(vertical: 4, horizontal: 0),
            ),
            const GTextField(
              hintText: 'Initial Setup',
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
