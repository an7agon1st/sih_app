import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial/flutter_bluetooth_serial.dart';
import 'package:url_launcher/url_launcher.dart' as URLCaller;

import './about-us.dart';
import './bluetooth_menu.dart';

class NumberPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NumberPage();
  }
}

class _NumberPage extends State<NumberPage> {
  FlutterBluetoothSerial bluetooth = FlutterBluetoothSerial.instance;

  String _phoneNumberRecieved = '';
  int readData = 1;
  static const threeSecond = Duration(seconds: 3);
  String _recievedData = _text.value.text.toString();
  static final TextEditingController _text = new TextEditingController();

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    bluetooth.onRead().listen((msg) {
      if (readData == 1) {
        setState(
          () {
            print('Read: $msg');
            _text.text = msg;
            _recievedData = msg;
            //checks if Message recieved is a number followed by D
            // if (/*_recievedData[0] == 'D' &&*/ _recievedData.length == 1) {
            _phoneNumberRecieved += _recievedData[0];

            _text.clear();
            readData = 0;
            if (msg != '') {
              Future.delayed(threeSecond, () {
                readData = 1;
              });
            }
            //  }
            if (_recievedData != '') {
              if (_recievedData[0] == 'C') {
                _launchCall();
                _phoneNumberRecieved = '';
              }
              if (_recievedData[0] == 'B') {
                _phoneNumberRecieved = _phoneNumberRecieved.substring(
                    0, _phoneNumberRecieved.length - 2);
              }
            }
            msg = '';
            _recievedData = '';
            //_text.text += msg;
          },
        );
      }
    });
  }

  _launchCall() async {
    String url = 'tel:' + _phoneNumberRecieved;
    if (await URLCaller.canLaunch(url)) {
      await URLCaller.launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void _writeTest() {
    bluetooth.isConnected.then(
      (isConnected) {
        if (isConnected) {
          _text.clear();
          bluetooth.write("9");
        }
      },
    );
  }

  void clearNumbers() {
    _phoneNumberRecieved = '';
  }

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
                title: Text(
                  'SIH App',
                  style: TextStyle(
                    color: Color(0xff1B5E20),
                  ),
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
        title: Text(
          'SIH - Segnes Efficiamini',
          style: TextStyle(
            color: Color(0xff1B5E20),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              child: Text(
                "Numbers recieved: \n" +
                    _phoneNumberRecieved, //_text.value.text.toString(),
                style: TextStyle(fontSize: 36.0),
              ),
            ),
            TextField(
              controller: _text,
              enabled: false,
              maxLines: 2,
              decoration: InputDecoration(
                border: InputBorder.none,
                labelText: 'Text Recieved',
              ),
            ),
            // OutlineButton(
            //   child: Text('Recieve'),
            //   onPressed: _writeTest,
            // ),
            OutlineButton(
              child: Icon(Icons.clear),
              onPressed: clearNumbers,
            ),
          ],
        ),
      ),
    );
  }
}
