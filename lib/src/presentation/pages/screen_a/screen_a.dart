import 'package:flutter/material.dart';
import 'package:jellybean/src/presentation/pages/screen_a/widgets/property_form.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      child: Center(
        child: PropertyForm(),
      ),
    );
  }
}
