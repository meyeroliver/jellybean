import 'package:flutter/material.dart';

class GTextField extends StatelessWidget {
  final String hintText;
  final EdgeInsets margin;
  final String? Function(String? value)? validator;

  const GTextField({
    super.key,
    required this.hintText,
    required this.margin,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: TextFormField(
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText,
        ),
        validator: validator,
      ),
    );
  }
}
