import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lab1test/screens/secondPage.dart';
import 'package:lab1test/utility/mystyle.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showName() {
    return Text(
      'KATAWUT KAEWMANEE',
      
      style: TextStyle(
          fontSize: 30.0, color: MyStyle().textColor, fontFamily: 'Righteous'),
    );
  }

  Widget showNumber() {
    return Text(
      'Age 20 years old',
      style: TextStyle(
          fontSize: 20.0,
          color: Colors.blueAccent[400],
          fontFamily: 'Righteous'),
    );
  }

  Widget showText() {
    return Text(
      'ยินดีต้อนรับ\n\n',
      style: TextStyle(
          fontSize: 45.0, color: Colors.greenAccent, fontFamily: 'Itim'),
    );
  }

  Widget showlogo() {
    return Image.asset(
      'images/mower.png',
      width: 100,
      height: 100,
    );
  }

  Widget emailText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            size: 36.0,
            color: Colors.red[900],
          ),
          labelText: 'Username',
          hintText: 'your@email.com'
        ),
      ),
    );
  }

  Widget passText() {
    return Container(
      width: 250.0,
      child: TextFormField(
        decoration: InputDecoration(
          icon: Icon(
            Icons.vpn_key,
            size: 36.0,
            color: Colors.red[900],
          ),
          labelText: 'Password',
          hintText: '123456789'
        ),
      ),
    );
  }

  Widget bottonlogin(){
    return Container(
      width: 250,
      child: RaisedButton.icon(
        color: Colors.green[100],
        textColor: Colors.white,
        icon: Icon(Icons.account_circle),
        label: Text('Login'),
        onPressed: (){},
        
      ),
    );
  }

  Widget bottonregister(){
    return Container(
      width: 250,
      child: RaisedButton.icon(
        color: Colors.red[100],
        textColor: Colors.white,
        icon: Icon(Icons.person_add),
        label: Text('register'),
        onPressed: (){
          var route = MaterialPageRoute(
            builder: (BuildContext context) =>SecondPage()
          );
          Navigator.of(context).push(route);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/wall.jpeg")),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[showName(), showlogo(),emailText(),passText(),bottonlogin(),bottonregister()],
            ),
          ),
        ),
      ),
    );
  }
}
