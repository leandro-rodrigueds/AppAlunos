import 'package:flutter/material.dart';
import 'tela0.dart';
import 'tela1.dart';
import 'tela2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {'/':(context) => Tela0(),
      '/primeira':(context) => Tela1(),
      '/segunda':(context) => Tela2()},
    );
  }
}


