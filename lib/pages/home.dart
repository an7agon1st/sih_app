import 'package:flutter/material.dart';

import './about-us.dart';
import './bluetooth_menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('SIH App'),
            ),
            ListTile(
              title: Text('Bluetooth Menu'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MyApp();
                }));
              },
            ),
            ListTile(
              title: Text('About Us'),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return AboutUsPage();
                }));
              },
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('SIH - Segnes Efficiamini'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text('Bluetooth Menu'),
              onPressed: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                }));
              },
            ),
            RaisedButton(
              child: Text('About Us'),
              onPressed: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return AboutUsPage();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
