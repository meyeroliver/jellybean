import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/presentation/pages/dashboard/dashboard_screen.dart';

void main() {
  runApp(const JellyBean());
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
      home: ChangeNotifierProvider(
        create: (context) => DashboardModel(),
        child: const DashboardScreen(),
      ),
    );
  }
}
