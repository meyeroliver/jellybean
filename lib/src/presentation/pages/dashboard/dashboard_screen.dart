import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jellybean/src/presentation/pages/dashboard/dashboard_viewmodel.dart';
import 'package:jellybean/src/presentation/pages/dashboard/side_menu/side_menu.dart';
import 'package:jellybean/src/presentation/pages/screen_a/screen_a.dart';
import 'package:jellybean/src/presentation/pages/screen_b/screen_b.dart';
import 'package:jellybean/src/presentation/pages/screen_c/screen_c.dart';

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DashboardViewModel dashboardVM = ref.watch(dashboardProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('JellyBean'),
      ),
      body: Row(
        children: [
          SideMenu(dashboardModel: dashboardVM),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Center(
                child:  displaySelectedMenuItemView(dashboardVM),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displaySelectedMenuItemView(DashboardViewModel dashboardVM) {
    switch (dashboardVM.selectedMenuItem) {
      case 'Screen A':
        return const ScreenA();
      case 'Screen B':
        return const ScreenB();
      case 'Screen C':
        return const ScreenC();
      default:
        return const ScreenA();
    }
  }
}
