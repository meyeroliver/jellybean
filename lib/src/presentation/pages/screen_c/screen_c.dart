import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo[800],
      child: const Center(
        child: Text('Screen C'),
      ),
    );
  }
}
