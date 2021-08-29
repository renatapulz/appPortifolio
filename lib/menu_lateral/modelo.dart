import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;
  NavigationModel({required this.title, required this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: 'HTML', icon: Ionicons.logo_html5),
  NavigationModel(title: 'CSS', icon: Ionicons.logo_css3),
  NavigationModel(title: 'JavaScript', icon: Ionicons.logo_javascript),
  NavigationModel(title: 'React Native', icon: Ionicons.logo_react),
];
