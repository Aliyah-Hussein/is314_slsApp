import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/login.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.black,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Opacity(
                        opacity: 0.3,
                        child: Image.asset('assets/images/background.jpg',
                            fit: BoxFit.cover))
                    //fit screen
                    ),
                Center(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                  'https://fhta.com.fj/wp-content/uploads/2017/05/USP_TAFE.jpg'),
                              fit: BoxFit.fitWidth,
                              alignment: Alignment.topCenter,
                            ),
                          )),
                    ),
                    Text(
                      'SLS App',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    //child: Container(
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          color: Color(0xFF4DB6AC),
                          padding: EdgeInsets.all(25),
                          child: Text('Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold))),
                    ),
                  ],
                ))
              ],
            )));
  }
}
