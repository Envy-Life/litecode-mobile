import 'package:flutter/material.dart';
import 'package:liteappv1/Landingpage.dart';
import 'package:liteappv1/myroompage.dart';
import 'package:liteappv1/navigationprovider.dart';
import 'package:liteappv1/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return navigationnumber();
          },
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.white,
          colorScheme: ColorScheme(
              primary: Colors.white,
              primaryVariant: Colors.black,
              secondary: Color(0xFF34D1FC).withOpacity(0.23),
              secondaryVariant: Color(0xFF34D1FC).withOpacity(0.23),
              surface: Colors.white,
              background: Colors.white,
              error: Colors.red,
              onPrimary: Colors.black,
              onSecondary: Colors.black,
              onSurface: Colors.black,
              onBackground: Colors.black,
              onError: Colors.white,
              brightness: Brightness.light),
        ),
        home: splashscreen(),
      ),
    );
  }
}
