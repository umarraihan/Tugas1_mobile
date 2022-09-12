import 'package:flutter/material.dart';
import 'package:tugas1_mobile/informasi.dart';
import 'package:tugas1_mobile/kalkulator.dart';
import 'package:tugas1_mobile/login.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  final routes = <String, WidgetBuilder>{
    login.tag: (context) => login(),
    informasi.tag: (context) => informasi(),
    kalkulator.tag: (context) => kalkulator(),
  };
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new login(),
      routes:routes,
      theme: new ThemeData(primarySwatch: Colors.blue),
    );
  }
}

