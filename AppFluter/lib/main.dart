import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projeto/views/tela0.dart';
import 'package:projeto/views/tela1.dart';
import 'package:projeto/views/tela2.dart';
import 'package:projeto/views/tela3.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => Tela0(),
      '/primeira': (context) => Tela1(),
      '/segunda': (context) => Tela2(),
      '/terceira': (context) => Tela3()
    });
  }
}


