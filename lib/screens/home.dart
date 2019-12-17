import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget showName() {
    return Text(
      'KATAWUT KAEWMANEE',
      style: TextStyle(
        fontSize: 30.0, 
        color: Colors.pink[200],
        fontFamily: 'Righteous'
        ),
    );
  }

  Widget showNumber() {
    return Text('Age 20 years old',
      style: TextStyle(
        fontSize: 20.0, 
        color: Colors.blueAccent[400],
        fontFamily: 'Righteous'
        ),);
  }

  Widget showText() {
    return Text('ยินดีต้อนรับ\n\n',
      style: TextStyle(
        fontSize: 45.0, 
        color: Colors.greenAccent,
         fontFamily: 'Itim'
        ),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[showText(), showName(), showNumber()],
          ),
        ),
      ),
    );
  }
}
