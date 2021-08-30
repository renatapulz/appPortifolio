import 'package:ionicons/ionicons.dart';
import 'package:flutter/material.dart';
import 'package:my_card_flutter/paginas_internas/htmlCss.dart';
import 'package:my_card_flutter/paginas_internas/javascript.dart';
import 'package:my_card_flutter/paginas_internas/reactnative.dart';

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
  NavigationModel(title: 'HTML e CSS', icon: Ionicons.code_slash_outline, page: HtmlCss()),
  NavigationModel(title: 'JavaScript', icon: Ionicons.logo_javascript, page: Javascript()),
  NavigationModel(title: 'React Native', icon: Ionicons.logo_react, page: ReactNative()),
];
