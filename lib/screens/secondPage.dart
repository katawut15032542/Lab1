import 'package:flutter/material.dart';
import 'package:lab1test/screens/thirdPage.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  final String titleString ="SecondPage";
  var texEditController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    Widget widget = new ListView(
      children: <Widget>[
        ListTile(
          title:  TextFormField(
            controller: texEditController,
          ),
        ),
        ListTile(
          title: RaisedButton(
            child: Text('Next to Third Page'),
            onPressed: (){
              var route = MaterialPageRoute(
            builder: (BuildContext context) =>ThirdPage(
              valueFromSecondPage: texEditController.text,
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

