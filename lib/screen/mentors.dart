import 'package:flutter/material.dart';
import 'package:tutorial_app/schedules/mentorschule.dart';

class mentors extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
          padding: EdgeInsets.zero,
          children: [
      UserAccountsDrawerHeader(
      accountName: Text('Hey, name@student.usp.ac.fj'),
      //accountEmail: Text('studentID@student.usp.ac.fj'),
      currentAccountPicture: CircleAvatar(
        child: ClipOval(
          child: Image.asset(
            'assets/images/pn.png',
            fit: BoxFit.cover,
            width: 90,
            height: 90,
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/picSLS.jpg')),
      ),
      accountEmail: null,
    ),

    ListTile(
    leading: Icon(Icons.book),
    title: Text('Set Mentoring Session'),
    onTap: () {
    Navigator.of(context).push(MaterialPageRoute(
    builder: (BuildContext context) => mentorschedule()));
    }),
            ListTile(
                leading: Icon(Icons.book),
                title: Text('View Reports'),
                onTap: () {

                }),




   ])
    );
  }
}
