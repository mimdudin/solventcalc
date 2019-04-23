import 'package:flutter/material.dart';

import './home.dart';
import './splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SolventCalc',
      theme: ThemeData(
        fontFamily: 'Quicksand',
        primaryColor: Color(0xff012348)
      ),
      home: SplashScreen(),
      routes: {'/main': (BuildContext context) => Home()},
    );
  }
}
