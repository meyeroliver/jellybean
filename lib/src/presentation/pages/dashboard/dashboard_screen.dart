import 'dart:developer';

import 'package:flutter/material.dart';
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
          Container(
              color: Colors.amber,
              width: 250,
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.message),
                    title: const Text('Messages'),
                    onTap: () {
                      dashboardModel.selectMenuItem('Messages');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_circle),
                    title: const Text('Profile'),
                    onTap: () {
                      dashboardModel.selectMenuItem('Profile');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      dashboardModel.selectMenuItem('Settings');
                    },
                  ),
                ],
              )),
          Expanded(
            child: Container(
              color: Colors.blueGrey,
              child: Center(
                child: ChangeNotifierProvider(
                    create: (context) => DashboardModel(),
                    child: Text(dashboardModel.selectedMenuItem)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
