import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'src/presentation/pages/dashboard/dashboard_screen.dart';

void main() {
  runApp(
    const ProviderScope(
      child: JellyBean(),
    ),
  );
}

class JellyBean extends StatelessWidget {
  const JellyBean({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JeallyBean',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DashboardScreen(),
    );
  }
}
