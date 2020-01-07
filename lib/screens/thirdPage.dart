import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  final String userFromSecondPage,passFromSecondPage;
  ThirdPage({Key key,this.userFromSecondPage,this.passFromSecondPage}):super(key:key); 
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  Widget email(){
    return Text("${widget.userFromSecondPage}");
  }
  Widget pass(){
    return Text("${widget.passFromSecondPage}");
  }

  final String titleString = "ThirdPage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text(titleString),
    ),
    body: SafeArea(
      child: Container(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[email(),pass()],
          ),
        ),
      ),
    )
    );
  }
}