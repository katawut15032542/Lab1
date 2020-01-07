import 'package:flutter/material.dart';
import 'package:lab1test/screens/thirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString ="Register";
  var texUser = new TextEditingController();
  var texPass = new TextEditingController();
  var texName = new TextEditingController();
  var texLastname = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title:  TextFormField(
            decoration: InputDecoration(
              labelText: 'Username',
              hintText: 'your@email.com'
            ),
            controller: texUser,
          ),
        ),
        ListTile(
          title:  TextFormField(
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: '123456789'
            ),
            controller: texPass,
          ),
        ),
        ListTile(
          title:  TextFormField(
            decoration: InputDecoration(
              labelText: 'Name',
              hintText: 'ชื่อ'
            ),
            controller: texName,
          ),
        ),
        ListTile(
          title:  TextFormField(
            decoration: InputDecoration(
              labelText: 'Lastname',
              hintText: 'นามสกุล'
            ),
            controller: texLastname,
          ),
        ),
        ListTile(
          title: RaisedButton(
            child: Text('register'),
            onPressed: (){
              var route = MaterialPageRoute(
            builder: (BuildContext context) =>ThirdPage(
              userFromSecondPage: texUser.text,
              passFromSecondPage: texPass.text,
              nameFromSecondPage: texName.text,
              lastnameFromSecondPage: texLastname.text,
            )
          );
          Navigator.of(context).push(route);
            },
          ),
        )
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(titleString),
      ),
      body: widget,
      // body: Container(
      //   child: Center(
      //     child: Image.asset('images/wall.jpeg'),
      //   ),
      // ),
    );
  }
}

