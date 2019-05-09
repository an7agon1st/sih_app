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
      ),
      home: HomePage()
    );
  }
}
