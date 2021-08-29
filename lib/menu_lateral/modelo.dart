import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:my_card_flutter/paginas_internas/css.dart';
import 'package:my_card_flutter/paginas_internas/html.dart';
import 'package:my_card_flutter/paginas_internas/javascript.dart';
import 'package:my_card_flutter/paginas_internas/react.dart';

class NavigationModel {
  String title;
  IconData icon;
  StatefulWidget page;

  NavigationModel({
    required this.title,
    required this.icon,
    required this.page
  });
}

List<NavigationModel> navigationItems = [
  NavigationModel(title: 'HTML', icon: Ionicons.logo_html5, page: Html()),
  NavigationModel(title: 'CSS', icon: Ionicons.logo_css3, page: Css()),
  NavigationModel(title: 'JavaScript', icon: Ionicons.logo_javascript, page: Javascript()),
  NavigationModel(title: 'React', icon: Ionicons.logo_react, page: React()),
];
