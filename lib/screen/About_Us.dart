import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tutorial_app/screen/sls.dart';

class AboutUs extends StatefulWidget {
  const AboutUs ({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        title: const Text ('About Us'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              onTap: (){
                showAboutDialog(
                    context: context,
                    applicationIcon: FlutterLogo(),
                    applicationName: 'SLS APP',
                    applicationVersion: '0.0.1',
                    applicationLegalese: '',
                    children: <Widget>[
                      Text(
                          'Student Learning Support is the learning support arm of the FSTE Learning and Teaching office. It is housed in the Student Learning Hub on the ground floor of the FSTE Administration building.'
                      )
                    ]
                );
              },


              title: Text('SHOW ABOUT PAGE'),
              tileColor: Colors.blue,
            )
          ],
        ),
      ),
      body: Center(
        child:RaisedButton(
          child: Text('SHOW ABOUT PAGE'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => AboutSLS()));
          }
          ),
      ),
    );
  }

}
