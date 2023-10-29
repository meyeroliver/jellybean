import 'package:flutter/material.dart';
import 'package:jellybean/src/presentation/pages/dashboard/dashboard_viewmodel.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.dashboardModel,
  }) : super(key: key);

  final DashboardViewModel dashboardModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      width: 250,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Screen A'),
            onTap: () {
              dashboardModel.selectMenuItem('Screen A');
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Screen B'),
            onTap: () {
              dashboardModel.selectMenuItem('Screen B');
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Screen C'),
            onTap: () {
              dashboardModel.selectMenuItem('Screen C');
            },
          ),
        ],
      ),
    );
  }
}
