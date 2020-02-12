import 'package:aproduct/utility/my_style.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
// Field

// Method

  Widget nameForm() {
    Color color = Colors.purple;
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        helperStyle: TextStyle(color: color),
        helperText: 'Type Your Name in Blank',
        labelStyle: TextStyle(color: color),
        labelText: 'Display Name :',
        icon: Icon(
          Icons.person,
          size: 36.0,
          color: color,
        ),
      ),
    );
  }
  

// Username

    Widget userForm() {
    Color color = Colors.green;
    Color coloruser = Colors.orange;
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        helperStyle: TextStyle(color: color),
        helperText: 'Type Your Username in Blank',
        labelStyle: TextStyle(color: color),
        labelText: 'Username:',
        icon: Icon(
          Icons.supervised_user_circle,
          size: 36.0,
          color: coloruser,
        ),
      ),
    );
  }

// Password


   Widget password() {
    Color color = Colors.green;
    return TextField(
      decoration: InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: color),
        ),
        helperStyle: TextStyle(color: color),
        helperText: 'Type Your Password in Blank',
        labelStyle: TextStyle(color: color),
        labelText: 'Password:',
        icon: Icon(
          Icons.vpn_key,
          size: 36.0,
          color: color,
        ),
      ),
      // obscureText: true,
    );
  }
  
  
  Widget registerButton() {
    return IconButton(
      tooltip: 'Upload To Server',
      icon: Icon(Icons.cloud_upload),
      onPressed: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(30.0),
        children: <Widget>[
          nameForm(),
          userForm(),
          password(),
        ],
      ),
      appBar: AppBar(
        actions: <Widget>[registerButton()],
        backgroundColor: Mystyle().textColor,
      ),
    );
  }
}
