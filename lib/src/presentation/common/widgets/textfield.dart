// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class GTextField extends StatelessWidget {
  final String name;
  final String? hintText;
  final EdgeInsets margin;
  final String? Function(String? value)? validator;

  const GTextField({
    Key? key,
    required this.name,
    this.hintText,
    required this.margin,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      margin: margin,
      child: FormBuilderTextField(
        name: name,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: name,
          hintText: hintText ?? name,
        ),
        validator: validator,
      ),
    );
  }
}
