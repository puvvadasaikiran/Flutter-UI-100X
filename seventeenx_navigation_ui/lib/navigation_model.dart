import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel(this.title, this.icon);
}

List<NavigationModel> navigationItems = [
  NavigationModel("Dashboard", Icons.insert_chart),
  NavigationModel("Errors", Icons.error),
  NavigationModel("Search", Icons.search),
  NavigationModel("Notifications", Icons.notifications),
  NavigationModel("Settings", Icons.settings),
];
