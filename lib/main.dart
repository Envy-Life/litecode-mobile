import 'package:flutter/material.dart';
import 'package:liteappv1/Landingpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          accentColor: Color(0xFF34D1FC).withOpacity(0.23)),
      home: Landingpage(),
    );
  }
}
