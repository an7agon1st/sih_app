import 'package:flutter/material.dart';

import './pages/home.dart';

void main() {
  runApp(SIHApp());
}

class SIHApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          fontFamily: 'Raleway',
          buttonColor: Color(0xffc6f68d),
          disabledColor: Color(0xff09af00),
          // primaryTextTheme: TextTheme(),
          scaffoldBackgroundColor: Color(0xfff2fde4),
          textTheme: TextTheme(
            title: TextStyle(
              color: Color(0xff1B5E20),
            ),
          ),
        ),
        home: HomePage());
  }
}
