import 'package:flutter/material.dart';

List<String> teamMembers = [
  'Mohammad Jafri',
  'Tanzilur Rahman',
  'Sajid Iqbal',
  'Mohammad Saud',
  'Salman Ahmad',
  'Abha Agrawal'
];

List<String> _imageLink = [
  'jafri.jpg',
  'tanzil.jpeg',
  'sajid.jpg',
  'saud.jpg',
  'salman.jpg',
  'abha.jpg',
];

Widget _buildTeamList(BuildContext context, int index) {
  double screenHeight = MediaQuery.of(context).size.height;
  double screenWidth = MediaQuery.of(context).size.width;

  return Padding(
    padding: EdgeInsets.all(9),
    child: Card(
      color: Colors.green[100],
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screenHeight * 0.03,
          horizontal: screenWidth * 0.05,
        ),
        child: Column(
          children: [
            Image.asset(
              'assets/' + _imageLink[index],
              fit: BoxFit.fill,
              //width: screenWidth * 0.3,
              //height: screenHeight * 0.3,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: Text(
                teamMembers[index],
                style: TextStyle(fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class AboutUs extends StatelessWidget {
  // AboutUs();
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
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
    ]);
  }
}
