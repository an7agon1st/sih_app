import 'package:flutter/material.dart';


class HowTo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2fde4),
      appBar: AppBar(
        title: Text(
          'SIH - Segnes Efficiamini',
          style: TextStyle(
            color: Color(0xff1B5E20),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'How to',
              style: TextStyle(fontSize: 24),
            ),
          ),
          Text(
              'Send data anytime, the phone wont send a key to recieve anything'),
          Text('The data sent should be a Capital D followed by a number'),
          Text('It is visible on the number page'),
          Text('To send a call, send a Capital C'),
          Text(
              'Example:\nto call 9958094407\nsend:\nD9\nD9\nD5\nD8\nD0\nD9\nD4\nD4\nD0\nD7\nC', textAlign: TextAlign.left,),
        ],
      ),
    );
  }
}
