import 'dart:ui';

import 'package:flutter/material.dart';
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
      width: 250,
      height: 250,
    );
  }

  Widget emailText() {
    return Container();
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
              children: <Widget>[showName(), showlogo()],
            ),
          ),
        ),
      ),
    );
  }
}
