import 'package:flutter/material.dart';
import 'package:startup_namer/HomePage.dart';
import 'dart:async';


void main() {
  runApp(new MaterialApp(
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen(),
      //'/OrderPage': (BuildContext context) => new OrderLogin(),
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _IntroPage createState() => new _IntroPage();
}

class _IntroPage extends State<SplashScreen> {
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
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFFF9423A),
      body: new Center(
        child: new Image.asset('assets/kulina_logo.png',
        width: 200.0,
        height: 200.0,
        ),
        
      ),
    );
  }
}