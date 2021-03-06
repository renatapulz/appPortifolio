import 'package:flutter/material.dart';
import 'package:my_card_flutter/tela_principal.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF303F9F),
        accentColor: Color(0xFFF037A5),
        scaffoldBackgroundColor: Color(0xFF3F51B5),
      ),
      debugShowCheckedModeBanner: false,
      home: TelaPrincipal(),
    );
  }
}
