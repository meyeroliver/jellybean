import 'package:flutter/material.dart';
import 'package:jellybean/src/presentation/pages/dashboard/side_menu/side_menu.dart';
import 'package:jellybean/src/presentation/pages/screen_a/screen_a.dart';
import 'package:jellybean/src/presentation/pages/screen_b/screen_b.dart';
import 'package:jellybean/src/presentation/pages/screen_c/screen_c.dart';

import 'package:provider/provider.dart';

class DashboardModel with ChangeNotifier {
  int _selectedItem = 0;
  String _selectedMenuItem = '';

  int get selectedItem => _selectedItem;
  String get selectedMenuItem => _selectedMenuItem;

  void selectItem(int index) {
    _selectedItem = index;
    notifyListeners();
  }

  void selectMenuItem(String menuItem) {
    _selectedMenuItem = menuItem;
    notifyListeners();
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dashboardModel = Provider.of<DashboardModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('JellyBean'),
      ),
      body: Row(
        children: [
          SideMenu(dashboardModel: dashboardModel),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Center(
                child: ChangeNotifierProvider(
                    create: (context) => DashboardModel(),
                    child: displaySelectedMenuItemView(dashboardModel)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget displaySelectedMenuItemView(DashboardModel dashboardModel) {
    switch (dashboardModel.selectedMenuItem) {
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
