import 'package:flutter/material.dart';

import './about_us.dart';

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
      home: Scaffold(
          appBar: AppBar(
            title: Text("SIH App - Segnes Efficiamini"),
          ),
          body: Container(
            child: AboutUs(),
          )),
    );
  }
}
