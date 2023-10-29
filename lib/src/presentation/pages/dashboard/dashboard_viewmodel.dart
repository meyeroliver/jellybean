import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardViewModel with ChangeNotifier {
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

final dashboardProvider =
    ChangeNotifierProvider<DashboardViewModel>((ref) => DashboardViewModel());
