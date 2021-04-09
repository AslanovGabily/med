import 'dart:async';

import 'package:flutter/material.dart';
import 'package:med/pages/home_pages.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

Widget home;

void main() => runApp(MyApp());

class Start extends StatefulWidget {
  Start({Key key}) : super(key: key);

  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Flexible(
            child: Image.asset(
              'assets/images/doc.jpeg',
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          SpinKitRipple(
            color: Colors.indigo[900],
          )
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Medical',
        theme: ThemeData(
            scaffoldBackgroundColor: Color(0xFFD1CCC9),
            primaryColor: Colors.indigo[900],
            textTheme: TextTheme(
              caption: TextStyle(fontSize: 22, color: Colors.white),
            ),
            fontFamily: 'Latin'),
        home: Start());
  }
}
