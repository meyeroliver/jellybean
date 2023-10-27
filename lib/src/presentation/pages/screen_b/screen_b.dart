import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[800],
      child: const Center(
        child: Text('Screen B'),
      ),
    );
  }
}
