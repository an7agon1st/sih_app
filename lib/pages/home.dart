import 'package:flutter/material.dart';

import './about-us.dart';
import './bluetooth_menu.dart';
import './number_display.dart';
import './how_to.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2fde4),
      drawer: Drawer(
        child: Container(
          color: Color(0XffF1F8E9),
          child: Column(
            children: <Widget>[
              AppBar(
                automaticallyImplyLeading: false,
                title: InkWell(
                  onDoubleTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HowTo();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'SIH App',
                    style: TextStyle(
                      color: Color(0xff1B5E20),
                    ),
                  ),
                ),
              ),
              Container(
                color: Color(0xffdefabb),
                child: ListTile(
                  title: Text('Number Page'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return NumberPage();
                    }));
                  },
                ),
              ),
              Container(
                color: Color(0xffc6f68d),
                child: ListTile(
                  title: Text('Bluetooth Menu'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyApp();
                    }));
                  },
                ),
              ),
              Container(
                color: Color(0xffdefabb),
                child: ListTile(
                  title: Text('About Us'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AboutUsPage();
                    }));
                  },
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: InkWell(
          onDoubleTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HowTo();
                },
              ),
            );
          },
          child: Text(
            'SIH - Segnes Efficiamini',
            style: TextStyle(
              color: Color(0xff1B5E20),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Color(0xffaaf255),
              textColor: Color(0xff1B5E20),
              child: Text('Bluetooth Menu'),
              onPressed: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return MyApp();
                }));
              },
            ),
            RaisedButton(
              color: Color(0xffaaf255),
              textColor: Color(0xff1B5E20),
              child: Text('Number page'),
              onPressed: () {
                return Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return NumberPage();
                }));
              },
            ),
            RaisedButton(
              color: Color(0xffc6f68d),
              textColor: Color(0xff1B5E20),
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
