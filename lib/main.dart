import 'package:flutter/material.dart';

void main() {
  runApp(SIHApp());
}

List<String> teamMembers = [
  'Mohammad Jafri',
  'Tanzilur Rahman',
  'Sajid Iqbal',
  'Mohammad Saud',
  'Salman Ahmad',
  'Abha Agarwal'
];

class SIHApp extends StatelessWidget {
  Widget _buildTeamList(BuildContext context, int index) {
    return 
    Padding(
      padding: EdgeInsets.all(9),
      child: Text(
      teamMembers[index],
    ),);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
        fontFamily: 'Raleway',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("SIH App - Segnes Efficiamini"),
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Team Members",
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Expanded(
              child: ListView.builder(
                //padding: EdgeInsets.all(12),
                itemBuilder: _buildTeamList,
                itemCount: teamMembers.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
