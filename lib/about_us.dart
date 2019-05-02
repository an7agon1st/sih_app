import 'package:flutter/material.dart';

List<String> teamMembers = [
  'Mohammad Jafri',
  'Tanzilur Rahman',
  'Sajid Iqbal',
  'Mohammad Saud',
  'Salman Ahmad',
  'Abha Agarwal'
];

Widget _buildTeamList(BuildContext context, int index) {
  return Padding(
    padding: EdgeInsets.all(9),
    child: Text(
      teamMembers[index],
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
