import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutorial_app/QR/QR_Scanner.dart';

import 'package:tutorial_app/network_utils/api.dart';
import 'package:tutorial_app/schedules/schedule.dart';
import 'package:tutorial_app/screen/login.dart';

import 'Courses.dart';




class mentee extends StatefulWidget {
  @override
  _mentee createState() => _mentee();
}

class _mentee extends State<mentee> {
  String name;
  @override
  void initState() {
    _loadUserData();
    super.initState();
  }

  _loadUserData() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var user = jsonDecode(localStorage.getString('user'));

    if (user != null) {
      setState(() {
        name = user['fname'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Hey, $name@student.usp.ac.fj'),
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
            title: Text('My Courses'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) => Courses()));
            },
          ),
          ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('My Schedule'),
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (BuildContext context) =>MySchedulePage ()));
            },
          ),

        /*  ListTile(
            leading: Icon(Icons.qr_code),
            title: Text('QR Scanner'),
            onTap: (){
               Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => HomePage()));
            },
          ),*/


        ],
      ),
    );
  }

  void logout() async {
    var res = await Network().getData('/logout');
    var body = json.decode(res.body);
    if (body['success']) {
      SharedPreferences localStorage = await SharedPreferences.getInstance();
      localStorage.remove('user');
      localStorage.remove('token');
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    }
  }
}
