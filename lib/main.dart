import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/dashboard.dart';
import 'package:tutorial_app/screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tutorial_app/screen/welcome.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // title: 'Test App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: WelcomePage());
    // home: CheckAuth(),
  }
}

class CheckAuth extends StatefulWidget {
  @override
  _CheckAuthState createState() => _CheckAuthState();
}

class _CheckAuthState extends State<CheckAuth> {
  bool isAuth = false;
  @override
  void initState() {
    _checkIfLoggedIn();
    super.initState();
  }

  void _checkIfLoggedIn() async {
    SharedPreferences localStorage = await SharedPreferences.getInstance();
    var token = localStorage.getString('token');
    if (token != null) {
      setState(() {
        isAuth = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (isAuth) {
      child = dashboard();
    } else {
      child = Login();
    }
    return Scaffold(
      body: child,
    );
  }
}
