import 'dart:io';

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:smartindustries/PinInput.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new SplashScreen(),
      routes: <String, WidgetBuilder>{

        '/HomeScreen': (BuildContext context) => new PinInput()

      },
      debugShowCheckedModeBanner: false,

    );
  }
}

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {

  startTime() async {

    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);

  }

  void navigationPage() {

    Navigator.of(context).pushReplacementNamed('/HomeScreen');

  }

  @override
  void initState() {

    super.initState();
    startTime ();

  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      body: new Center(
        child: new Image.asset('images/Minmegam.png'),
      ),
    );
  }

}
