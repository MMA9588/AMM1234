import 'package:aproduct/utility/my_style.dart';
import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
// Field

// Method
  Widget showLogo() {
    return Container(
      height: 120.0,
      child: Image.asset('images/Logo.JPG'),
    );
  }

  Widget showAppName() {
    return Text(
      'A Product',
      style: TextStyle(
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        color: Mystyle().textColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[showLogo(), showAppName()],
        ),
      ),
    );
  }
}