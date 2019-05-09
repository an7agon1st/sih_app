import 'package:flutter/material.dart';

import '../about_us.dart';

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text("SIH - Segnes Efficiamini"),
          ),
          body: Container(
            child: AboutUs(),
          ),
    );
  }
}
