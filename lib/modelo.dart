
import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  NavigationModel({required this.title, required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: 'HTML', icon: Icons.add),
  NavigationModel(title: 'CSS', icon: Icons.add),
  NavigationModel(title: 'JavaScript', icon: Icons.add),
  NavigationModel(title: 'React Native', icon: Icons.add),
];